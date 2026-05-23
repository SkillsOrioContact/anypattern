import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/pattern_editor_provider.dart';
import '../../domain/services/subscription_service.dart';

class PatternLibraryScreen extends ConsumerWidget {
  const PatternLibraryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final templatesMap = ref.watch(templateRegistryProvider);
    final templates = templatesMap.values.toList();
    final isPremium = ref.watch(isPremiumProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Pattern Library')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: templates.length,
        itemBuilder: (context, index) {
          final t = templates[index];

          // Let's pretend some templates are premium for demonstration
          final bool isPremiumTemplate = ['shift_dress', 'kurta'].contains(t.id);
          final bool locked = isPremiumTemplate && !isPremium;

          return Card(
            color: locked ? Colors.grey[200] : null,
            child: InkWell(
              onTap: () {
                if (locked) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a premium template. Upgrade in settings.')),
                  );
                } else {
                  context.push('/editor/${t.id}');
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    locked ? Icons.lock : Icons.architecture,
                    size: 48,
                    color: locked ? Colors.grey : null
                  ),
                  const SizedBox(height: 16),
                  Text(
                    t.name,
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    locked ? 'Premium' : 'Free',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: locked ? Colors.amber[800] : Colors.green,
                      fontWeight: FontWeight.bold
                    )
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
