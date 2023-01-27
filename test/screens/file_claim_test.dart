import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:insurancemockapp/ui/screens/file_claim.dart';

void main() {
  group("File Claim Screen", () {
    Widget screen = MaterialApp(
      home: FileClaim(),
    );
    testWidgets("Display File Claim screen", (WidgetTester tester) async {
      // Build Buy Insurance screen
      await tester.pumpWidget(screen);

      // Find the title text.
      expect(
          find.textContaining(
              "NOTE: THE COMPANY DOES NOT ADMIT LIABILITY BY THE ISSUE OF THIS FORM."),
          findsOneWidget);
    });
  });
}
