import 'package:flutter/material.dart';
// import 'package:orderfromme/utils/login.dart';

class SocialButton extends StatelessWidget {
  SocialButton({
    Key? key,
    required this.text,
    required this.image,
    required this.handleLogIn,
  }) : super(key: key);

  String text;
  String? image;
  void Function() handleLogIn;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return OutlinedButton(
      onPressed: handleLogIn,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(image!),
            height: 30.0,
          ),
          const SizedBox(
            width: 20.0,
          ),
          const SizedBox(width: 45,),
          Text(
            text,
            style: textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
