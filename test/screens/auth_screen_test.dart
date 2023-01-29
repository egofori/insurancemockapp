import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:insurancemockapp/ui/screens/auth_screen.dart';

void main() {
  group("Log In Screen", () {
    Widget screen = MaterialApp(
      home: Auth(
        type: "login",
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome back!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Hello again. You know what to do.",
              style:
              TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.7)),
            ),
          ],
        ),
        onEmailButtonPressed: () {},
        onGoogleButtonPressed: () {},
      ),
    );
    testWidgets("Display Log in screen", (WidgetTester tester) async {
      // Build Log In screen
      await tester.pumpWidget(screen);

      // Find the title text.
      expect(find.text("Welcome back!"), findsOneWidget);
    });
  });
}
