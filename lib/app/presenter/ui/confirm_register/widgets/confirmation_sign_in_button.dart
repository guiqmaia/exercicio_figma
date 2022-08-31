import 'package:flutter/material.dart';

class ConfirmationSignInButton extends StatelessWidget {
  const ConfirmationSignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: const Center(
          child: Text(
            'SIGN IN',
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 20,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ),
    );
  }
}
