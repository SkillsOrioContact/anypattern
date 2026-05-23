import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:anypattern/main.dart';

void main() {
  testWidgets('App loads Home Screen', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: AnyPatternApp()));
    await tester.pumpAndSettle();
    expect(find.text('AnyPattern'), findsOneWidget); // App Bar title
    expect(find.text('Measurement Profiles'), findsOneWidget);
  });
}