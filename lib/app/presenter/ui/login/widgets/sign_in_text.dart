import 'package:flutter/material.dart';

class SignInText extends StatelessWidget {
  const SignInText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign in',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
      ),
    );
  }
}
