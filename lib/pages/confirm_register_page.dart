import 'package:flutter/material.dart';

class ConfirmRegisterPage extends StatelessWidget {
  const ConfirmRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 45,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Your registration was sucessful!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
            Icon(
              Icons.check,
              color: Colors.purple.shade800,
              size: 250,
            ),
            Text(
              'Your registration was succesful and we have sent you a confirmation receipt to your email at:',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const Text('guilherme.q.maia@gmail.com'),
            InkWell(
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
            ),
          ],
        ),
      ),
    );
  }
}
