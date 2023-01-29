import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:insurancemockapp/ui/screens/app.dart';

void main() {
  group("App", () {
    Widget screen = const MaterialApp(
      home: App(),
    );
    testWidgets("Display App screen", (WidgetTester tester) async {
      // Build App screen
      await tester.pumpWidget(screen);

      // Find the title text.
      expect(find.text("cuvva"), findsOneWidget);
    });

    testWidgets("Display Insights screen", (WidgetTester tester) async {
      // Build App screen
      await tester.pumpWidget(screen);

      // Find the title text.
      expect(find.text("Insights"), findsOneWidget);
    });

    testWidgets("Display Refer a friend screen", (WidgetTester tester) async {
      // Build App screen
      await tester.pumpWidget(screen);

      // Find the title text.
      expect(find.text("Refer a friend"), findsOneWidget);
    });

    testWidgets("Display Profile screen", (WidgetTester tester) async {
      // Build App screen
      await tester.pumpWidget(screen);

      // Find the title text.
      expect(find.text("Profile"), findsOneWidget);
    });
  });
}
