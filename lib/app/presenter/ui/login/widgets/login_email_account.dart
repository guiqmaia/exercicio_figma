import 'package:flutter/material.dart';

class LoginEmailAccount extends StatelessWidget {
  const LoginEmailAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'or use your email account',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey.shade400,
        fontSize: 20,
        letterSpacing: 0.2,
      ),
    );
  }
}
