import 'package:flutter/material.dart';
import 'package:insurancemockapp/ui/screens/app.dart';
import 'package:insurancemockapp/ui/screens/buy_insurance.dart';
import 'package:insurancemockapp/ui/screens/auth_screen.dart';
import 'package:insurancemockapp/ui/screens/file_claim.dart';
import 'package:insurancemockapp/utils/themes/light_theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insurance Mock App',
      theme: lightTheme,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/app': (context) {
          return const App();
        },
        '/buy-insurance': (context) {
          return BuyInsurance();
        },
        '/file-claim': (context) {
          return FileClaim();
        },
        '/': (context) {
          return Auth(
            type: "register",
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Create your account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Create an account so we can save your qoutes and information for you.",
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(0.7)),
                ),
              ],
            ),
            onEmailButtonPressed: () {
              Navigator.pushReplacementNamed(context, "/app");
            },
            onGoogleButtonPressed: () {
              Navigator.pushReplacementNamed(context, "/app");
            },
          );
        },
        '/login': (context) {
          return Auth(
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
                  style: TextStyle(
                      fontSize: 16, color: Colors.black.withOpacity(0.7)),
                ),
              ],
            ),
            onEmailButtonPressed: () {
              Navigator.pushReplacementNamed(context, "/app");
            },
            onGoogleButtonPressed: () {
              Navigator.pushReplacementNamed(context, "/app");
            },
          );
        },
      },
    );
  }
}
