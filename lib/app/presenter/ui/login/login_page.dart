import 'package:flutter/material.dart';

import 'widgets/body_login.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final mailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(75, 14, 136, 1),
        body: BodyLogin(formKey: _formKey, mailController: mailController, passwordController: passwordController),
      ),
    );
  }
}
