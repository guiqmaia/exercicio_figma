import 'package:flutter/material.dart';

class LoginPageText extends StatelessWidget {
  const LoginPageText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        'Enter your personal details and start journey with us',
        style: TextStyle(fontSize: 18, color: Colors.white, letterSpacing: 0.7),
        textAlign: TextAlign.center,
      ),
    );
  }
}
