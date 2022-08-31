import 'package:flutter/material.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Forgot your password?',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey.shade400,
        fontSize: 20,
      ),
    );
  }
}
