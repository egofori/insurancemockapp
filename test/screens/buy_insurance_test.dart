import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:insurancemockapp/ui/screens/buy_insurance.dart';

void main() {
  group("Buy Insurance Screen", () {
    Widget screen = MaterialApp(
      home: BuyInsurance(),
    );
    testWidgets("Display Buy Insurance screen", (WidgetTester tester) async {
      // Build Buy Insurance screen
      await tester.pumpWidget(screen);

      // Find the title text.
      expect(
          find.textContaining("NOTE: PLEASE GIVE A DEFINITE ANSWER TO EACH QUESTION"),
          findsOneWidget);
    });
  });
}
