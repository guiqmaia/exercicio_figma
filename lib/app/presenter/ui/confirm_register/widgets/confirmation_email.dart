import 'package:flutter/material.dart';

class ConfirmationEmail extends StatelessWidget {
  const ConfirmationEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Your registration was succesful and we have sent you a confirmation receipt to your email at:',
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
        letterSpacing: 1.2,
      ),
      textAlign: TextAlign.center,
    );
  }
}
