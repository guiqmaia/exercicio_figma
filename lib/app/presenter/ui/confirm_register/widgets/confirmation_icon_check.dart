import 'package:flutter/material.dart';

class ConfirmationIconCheck extends StatelessWidget {
  const ConfirmationIconCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.check,
      color: Color.fromRGBO(135, 87, 205, 1),
      size: 250,
    );
  }
}
