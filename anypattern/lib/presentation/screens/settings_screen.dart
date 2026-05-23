import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/services/backup_service.dart';
import '../../domain/services/subscription_service.dart';
import 'ai_settings_screen.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  final BackupService _backupService = BackupService();
  bool _isLoading = false;

  Future<void> _handleBackup() async {
    setState(() => _isLoading = true);
    final success = await _backupService.backupToDrive();
    setState(() => _isLoading = false);

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(success ? 'Backup successful' : 'Backup failed')),
    );
  }

  Future<void> _handleRestore() async {
    setState(() => _isLoading = true);
    final success = await _backupService.restoreFromDrive();
    setState(() => _isLoading = false);

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(success ? 'Restore successful' : 'Restore failed')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: _isLoading
        ? const Center(child: CircularProgressIndicator())
        : ListView(
            children: [
              ListTile(
                title: const Text('Backup to Google Drive'),
                subtitle: const Text('Save your profiles and projects to the cloud'),
                trailing: const Icon(Icons.cloud_upload),
                onTap: _handleBackup,
              ),
              ListTile(
                title: const Text('Restore from Google Drive'),
                subtitle: const Text('Overwrite local data with cloud backup'),
                trailing: const Icon(Icons.cloud_download),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Restore Data'),
                      content: const Text('This will overwrite all local patterns and measurements. Are you sure?'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            _handleRestore();
                          },
                          child: const Text('Restore'),
                        ),
                      ],
                    ),
                  );
                },
              ),
              const Divider(),
              Consumer(
                builder: (context, ref, child) {
                  final isPremium = ref.watch(isPremiumProvider);
                  return ListTile(
                    title: Text(isPremium ? 'Premium Active' : 'Upgrade to Premium'),
                    subtitle: Text(isPremium ? 'Thank you for your support!' : 'Remove ads and unlock exclusive templates'),
                    trailing: isPremium ? const Icon(Icons.star, color: Colors.amber) : const Icon(Icons.shopping_cart),
                    onTap: isPremium ? null : () async {
                      setState(() => _isLoading = true);
                      final service = ref.read(subscriptionServiceProvider);
                      await service.purchasePremium();
                      if (!mounted) return;
                      setState(() => _isLoading = false);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Premium Unlocked!')),
                      );
                    },
                  );
                },
              ),
              const Divider(),
              ListTile(
                title: const Text('AI Assistance'),
                subtitle: const Text('Configure optional AI features'),
                trailing: const Icon(Icons.psychology),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AiSettingsScreen()),
                  );
                },
              ),
            ],
          ),
    );
  }
}