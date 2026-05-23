import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/services/ai_service.dart';

class AiSettingsScreen extends ConsumerStatefulWidget {
  const AiSettingsScreen({super.key});

  @override
  ConsumerState<AiSettingsScreen> createState() => _AiSettingsScreenState();
}

class _AiSettingsScreenState extends ConsumerState<AiSettingsScreen> {
  final _keyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Pre-fill controller if we have a key loaded
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final existingKey = ref.read(aiKeyProvider);
      if (existingKey != null) {
        _keyController.text = existingKey;
      }
    });
  }

  @override
  void dispose() {
    _keyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isEnabled = ref.watch(aiEnabledProvider);
    final aiService = ref.read(aiServiceProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('AI Features')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Enhance your pattern drafting with AI assistance. This feature requires you to provide your own API key. Your key is stored securely on this device and never shared with us.',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 16),
          SwitchListTile(
            title: const Text('Enable AI Features'),
            value: isEnabled,
            onChanged: (val) {
              aiService.setAiEnabled(ref.read(aiEnabledProvider.notifier), val);
            },
          ),
          if (isEnabled) ...[
            const Divider(),
            const Text('Google Gemini API Key', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            TextField(
              controller: _keyController,
              decoration: const InputDecoration(
                labelText: 'API Key',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                aiService.saveApiKey(ref.read(aiKeyProvider.notifier), 'gemini', _keyController.text);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('API Key saved securely')),
                );
              },
              child: const Text('Save Key'),
            ),
          ],
        ],
      ),
    );
  }
}
