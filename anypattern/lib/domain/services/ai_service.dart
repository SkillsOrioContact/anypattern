import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final aiServiceProvider = Provider<AiService>((ref) => AiService());
final aiEnabledProvider = StateProvider<bool>((ref) => false);
final aiKeyProvider = StateProvider<String?>((ref) => null);

class AiService {
  final _storage = const FlutterSecureStorage();
  static const _keyPrefix = 'ai_api_key_';
  static const _enabledKey = 'ai_enabled';

  Future<void> init(StateController<bool> enabledController, StateController<String?> keyController) async {
    final enabledStr = await _storage.read(key: _enabledKey);
    final isEnabled = enabledStr == 'true';
    enabledController.state = isEnabled;

    if (isEnabled) {
      final key = await _storage.read(key: '${_keyPrefix}gemini');
      keyController.state = key;
    }
  }

  Future<void> setAiEnabled(StateController<bool> enabledController, bool enabled) async {
    await _storage.write(key: _enabledKey, value: enabled.toString());
    enabledController.state = enabled;
  }

  Future<void> saveApiKey(StateController<String?> keyController, String provider, String key) async {
    await _storage.write(key: '$_keyPrefix$provider', value: key);
    keyController.state = key;
  }

  Future<void> clearApiKey(StateController<String?> keyController, String provider) async {
    await _storage.delete(key: '$_keyPrefix$provider');
    keyController.state = null;
  }
}
