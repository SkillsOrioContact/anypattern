import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnyPattern'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.push('/settings'),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.straighten),
                title: const Text('Measurement Profiles'),
                subtitle: const Text('Manage user measurements'),
                onTap: () => context.push('/measurements'),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: const Icon(Icons.style),
                title: const Text('Pattern Library'),
                subtitle: const Text('Browse and draft patterns'),
                onTap: () => context.push('/library'),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: ListTile(
                leading: const Icon(Icons.folder),
                title: const Text('My Projects'),
                subtitle: const Text('View saved pattern drafts'),
                onTap: () => context.push('/projects'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
