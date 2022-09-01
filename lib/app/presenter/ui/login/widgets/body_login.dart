import 'package:exercicio_figma/app/presenter/ui/home/home_page.dart';
import 'package:exercicio_figma/app/riverpod/user_provider.dart';
import 'package:exercicio_figma/app/shared/mail_validator_form_field.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'forgot_password_text.dart';
import 'login_email_account.dart';
import 'login_icons_row.dart';
import 'login_page_text.dart';
import 'password_text_form_field.dart';
import 'sign_in_text.dart';
import 'sign_up_button.dart';

class BodyLogin extends HookConsumerWidget {
  BodyLogin({
    Key? key,
    required GlobalKey<FormState> formKey,
    required this.mailController,
    required this.passwordController,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController mailController;
  final TextEditingController passwordController;
  bool invalidLogin = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SignInText(),
            const SizedBox(height: 35),
            const LoginIconsRow(),
            const SizedBox(height: 80),
            const LoginEmailAccount(),
            const SizedBox(height: 20),
            MailValidatorFormField(mailController: mailController),
            const SizedBox(height: 15),
            PasswordTextFormField(
              passwordController: passwordController,
            ),
            const SizedBox(height: 20),
            const ForgotPasswordText(),
            const SizedBox(height: 65),
            InkWell(
              onTap: () async {
                if (_formKey.currentState!.validate()) {
                  ref.watch(userProvider.notifier).getUserInfo(mailController.text, passwordController.text);
                  if (user!.nome != '') {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: ((context) => const HomePage()),
                      ),
                    );
                  } else {
                    invalidLogin = true;
                  }
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
            const SizedBox(height: 15),
            Visibility(
              visible: invalidLogin,
              replacement: const SizedBox.shrink(),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  'Alguma informação do login está incorreta ou ela não existe',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),
            const LoginPageText(),
            const SizedBox(height: 20),
            const SignUpButton()
          ],
        ),
      ),
    );
  }
}
