import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/drive/v3.dart' as drive;
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:path_provider/path_provider.dart';
import 'package:archive/archive_io.dart';

class BackupService {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      drive.DriveApi.driveAppdataScope,
    ],
  );

  /// Signs the user in and returns a DriveApi instance.
  Future<drive.DriveApi?> _getDriveApi() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signIn();
      if (account == null) return null; // User cancelled

      final authClient = await _googleSignIn.authenticatedClient();
      if (authClient == null) return null;

      return drive.DriveApi(authClient);
    } catch (e) {
      debugPrint('Google Sign-In Error: $e');
      return null;
    }
  }

  /// Compresses the local database directory into a zip archive.
  Future<File?> _createBackupArchive() async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final isarPath = '${appDir.path}/default.isar'; // default Isar name
      final file = File(isarPath);

      if (!await file.exists()) {
        debugPrint('No local database found to backup.');
        return null;
      }

      final encoder = ZipFileEncoder();
      final backupPath = '${appDir.path}/AnyPatternBackup.zip';
      encoder.create(backupPath);
      encoder.addFile(file);
      encoder.close();

      return File(backupPath);
    } catch (e) {
      debugPrint('Error creating backup archive: $e');
      return null;
    }
  }

  /// Uploads the zip archive to Google Drive appDataFolder.
  Future<bool> backupToDrive() async {
    try {
      final api = await _getDriveApi();
      if (api == null) return false;

      final backupFile = await _createBackupArchive();
      if (backupFile == null) return false;

      final driveFile = drive.File()
        ..name = 'AnyPatternBackup.zip'
        ..parents = ['appDataFolder'];

      final media = drive.Media(backupFile.openRead(), backupFile.lengthSync());

      // Search if a backup already exists to overwrite it
      final fileList = await api.files.list(spaces: 'appDataFolder');
      final existingFiles = fileList.files;
      if (existingFiles != null && existingFiles.isNotEmpty) {
        final existingFileId = existingFiles.first.id;
        await api.files.update(driveFile, existingFileId!, uploadMedia: media);
      } else {
        await api.files.create(driveFile, uploadMedia: media);
      }

      return true;
    } catch (e) {
      debugPrint('Backup to Drive failed: $e');
      return false;
    }
  }

  /// Downloads and extracts the backup from Google Drive.
  Future<bool> restoreFromDrive() async {
    try {
      final api = await _getDriveApi();
      if (api == null) return false;

      final fileList = await api.files.list(spaces: 'appDataFolder');
      final files = fileList.files;
      if (files == null || files.isEmpty) {
        debugPrint('No backup found in Drive.');
        return false;
      }

      final fileId = files.first.id;
      if (fileId == null) return false;

      final drive.Media response = await api.files.get(
        fileId,
        downloadOptions: drive.DownloadOptions.fullMedia,
      ) as drive.Media;

      final appDir = await getApplicationDocumentsDirectory();
      final tempZipPath = '${appDir.path}/DownloadedBackup.zip';
      final tempZipFile = File(tempZipPath);

      final sink = tempZipFile.openWrite();
      await response.stream.pipe(sink);
      await sink.close();

      // Extract the archive, overwriting current DB
      final bytes = tempZipFile.readAsBytesSync();
      final archive = ZipDecoder().decodeBytes(bytes);

      for (final file in archive) {
        final filename = file.name;
        if (file.isFile) {
          final data = file.content as List<int>;
          File('${appDir.path}/$filename')
            ..createSync(recursive: true)
            ..writeAsBytesSync(data);
        }
      }

      return true;
    } catch (e) {
      debugPrint('Restore from Drive failed: $e');
      return false;
    }
  }
}
