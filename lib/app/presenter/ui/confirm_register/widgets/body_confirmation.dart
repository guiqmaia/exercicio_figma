import 'package:exercicio_figma/app/shared/sign_button.dart';
import 'package:flutter/material.dart';

import '../../login/login_page.dart';
import 'confirmation_email.dart';
import 'confirmation_email_sent.dart';
import 'confirmation_icon_check.dart';
import 'confirmation_sucess_text.dart';

class BodyConfirmation extends StatelessWidget {
  const BodyConfirmation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 45,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ConfirmationSucessText(),
          const ConfirmationIconCheck(),
          const ConfirmationEmail(),
          const SizedBox(height: 10),
          const ConfirmationEmailSent(),
          const SizedBox(height: 60),
          SignButton(
            text: 'SIGN IN',
            route: LoginPage(),
          ),
        ],
      ),
    );
  }
}
