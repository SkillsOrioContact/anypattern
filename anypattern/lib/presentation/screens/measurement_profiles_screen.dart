import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/models/measurement_profile_model.dart';
import '../providers/database_provider.dart';

class MeasurementProfilesScreen extends ConsumerWidget {
  const MeasurementProfilesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profilesAsync = ref.watch(measurementProfilesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Measurement Profiles'),
      ),
      body: profilesAsync.when(
        data: (profiles) {
          if (profiles.isEmpty) {
            return const Center(child: Text('No profiles found. Create one!'));
          }
          return ListView.builder(
            itemCount: profiles.length,
            itemBuilder: (context, index) {
              final profile = profiles[index];
              return ListTile(
                leading: const Icon(Icons.person),
                title: Text(profile.name),
                subtitle: Text('Created: ${profile.createdAt.toLocal().toString().split(' ')[0]}'),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () async {
                    final isar = await ref.read(isarProvider.future);
                    await isar.writeTxn(() async {
                      await isar.measurementProfileModels.delete(profile.id);
                    });
                  },
                ),
                onTap: () {
                  // In a full implementation, this navigates to a detailed edit form
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Edit profile functionality to be implemented')),
                  );
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          // Open dialog to create a basic new profile
          showDialog(
            context: context,
            builder: (ctx) {
              String newName = '';
              return AlertDialog(
                title: const Text('New Profile'),
                content: TextField(
                  decoration: const InputDecoration(labelText: 'Profile Name'),
                  onChanged: (val) => newName = val,
                ),
                actions: [
                  TextButton(
                    child: const Text('Cancel'),
                    onPressed: () => Navigator.pop(ctx),
                  ),
                  TextButton(
                    child: const Text('Save'),
                    onPressed: () async {
                      if (newName.isNotEmpty) {
                        final isar = await ref.read(isarProvider.future);
                        final newProfile = MeasurementProfileModel()..name = newName;
                        await isar.writeTxn(() async {
                          await isar.measurementProfileModels.put(newProfile);
                        });
                        if (context.mounted) Navigator.pop(ctx);
                      }
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
