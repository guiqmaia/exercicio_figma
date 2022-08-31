import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  const SignButton({
    Key? key,
    this.formKey,
    required this.text,
    required this.route,
  }) : super(key: key);

  final GlobalKey<FormState>? formKey;
  final String text;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (formKey != null) {
          if (formKey!.currentState!.validate()) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => route),
              ),
            );
          }
        } else {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) => route),
            ),
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
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
