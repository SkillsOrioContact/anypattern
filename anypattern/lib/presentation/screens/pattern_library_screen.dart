import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PatternLibraryScreen extends StatelessWidget {
  const PatternLibraryScreen({super.key});

  final List<Map<String, String>> templates = const [
    {'id': 'basic_skirt', 'name': 'Basic Skirt', 'category': 'Bottoms'},
    {'id': 'basic_bodice', 'name': 'Basic Bodice', 'category': 'Tops'},
    {'id': 'basic_trousers', 'name': 'Basic Trousers', 'category': 'Bottoms'},
  ];

  @override
  Widget build(BuildContext context) {
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
          return Card(
            child: InkWell(
              onTap: () {
                context.push('/editor/${t['id']}');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.architecture, size: 48),
                  const SizedBox(height: 16),
                  Text(t['name']!, style: Theme.of(context).textTheme.titleMedium),
                  Text(t['category']!, style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
