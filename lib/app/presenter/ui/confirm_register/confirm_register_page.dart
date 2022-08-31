import 'package:flutter/material.dart';

import 'widgets/body_confirmation.dart';


class ConfirmRegisterPage extends StatelessWidget {
  const ConfirmRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(75, 14, 136, 1),
      body: BodyConfirmation(),
    );
  }
}
