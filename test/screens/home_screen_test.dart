import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:insurancemockapp/ui/screens/home.dart';
import 'package:insurancemockapp/ui/screens/buy_insurance.dart';
import 'package:insurancemockapp/ui/screens/file_claim.dart';

void main() {
  group("Home", () {
    Widget screen = MaterialApp(
      home: Home(),
      routes: <String, WidgetBuilder>{
        '/buy-insurance': (context) {
          return BuyInsurance();
        },
        '/file-claim': (context) {
          return FileClaim();
        },
      },
    );

    testWidgets("Display Home screen", (WidgetTester tester) async {
      // Build Home screen
      await tester.pumpWidget(screen);

      // Find the title text.
      expect(find.text("cuvva"), findsOneWidget);
    });

    testWidgets("Display Buy  Insurance screen", (WidgetTester tester) async {
      // Build Buy Insurance screen
      await tester.pumpWidget(screen);

      // Tap the buy insurance policy
      await tester.tap(find.text("Buy insurance policy"));
      await tester.pumpAndSettle();

      // Find the title text.
      expect(
          find.textContaining("PLEASE GIVE A DEFINITE ANSWER TO EACH QUESTION"),
          findsOneWidget);
    });

    testWidgets("Display File Claim screen", (WidgetTester tester) async {
      // Build Buy Insurance screen
      await tester.pumpWidget(screen);

      // Tap the buy insurance policy
      await tester.tap(find.text("File a claim"));
      await tester.pumpAndSettle();

      // Find the title text.
      expect(
          find.textContaining(
              "NOTE: THE COMPANY DOES NOT ADMIT LIABILITY BY THE ISSUE OF THIS FORM."),
          findsOneWidget);
    });
  });
}
