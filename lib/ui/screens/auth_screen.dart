import 'package:flutter/material.dart';
import 'package:insurancemockapp/ui/widgets/divider.dart';
import 'package:insurancemockapp/ui/widgets/social_button.dart';
import 'package:insurancemockapp/utils/themes/light_theme.dart';

class Auth extends StatefulWidget {
  Auth({
    Key? key,
    required this.type,
    required this.title,
    required this.onEmailButtonPressed,
    required this.onGoogleButtonPressed,
  }) : super(key: key);

  Widget title;
  void Function()? onEmailButtonPressed;
  void Function() onGoogleButtonPressed;
  String type;

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.help,
              color: colorPrimary,
              size: 30,
            ),
          )
        ],
      ),
      // add screen padding
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10.0,
          bottom: 10.0,
          right: 20,
          left: 20,
        ),

        // scrollable screen content

        child: ListView(
          children: [
            widget.title,
            const SizedBox(
              height: 30,
            ),

            // sign up with email

            Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration:
                          const InputDecoration(labelText: "Email Address"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter anything";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          widget.onEmailButtonPressed!();
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(widget.type == "register"
                              ? "Sign up with email"
                              : "Sign in with email"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            DividerHorizontal(
              middle: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("or",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.black.withOpacity(0.4),
                    )),
              ),
              thickness: 1.0,
            ),
            const SizedBox(height: 40),

            // sign up with google

            SocialButton(
              text: widget.type == "register"
                  ? "Sign up with Google"
                  : "Sign in with Google",
              image: "assets/images/google-logo-9808.png",
              handleLogIn: widget.onGoogleButtonPressed,
            ),
            const SizedBox(
              height: 40,
            ),

            // already have an account button

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.type == "register"
                    ? TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/login");
                        },
                        child: const Text("I already have an account"),
                      )
                    : TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/");
                        },
                        child: const Text("New here? Create an account"),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
