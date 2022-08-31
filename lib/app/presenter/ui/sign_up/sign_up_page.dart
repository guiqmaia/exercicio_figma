import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:exercicio_figma/app/domain/user_model.dart';
import 'package:exercicio_figma/app/presenter/ui/confirm_register/confirm_register_page.dart';
import 'package:exercicio_figma/app/services/create_user.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../riverpod/email_provider.dart';
import '../../../shared/mail_validator_form_field.dart';

class SignUpPage extends HookConsumerWidget {
  SignUpPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromRGBO(75, 14, 136, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Create account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          AkarIcons.linkedin_box_fill,
                          color: Color.fromRGBO(75, 14, 136, 1),
                          size: 25,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        AkarIcons.google_fill,
                        color: Color.fromRGBO(75, 14, 136, 1),
                        size: 30,
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Icon(
                      AkarIcons.github_fill,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),
                const SizedBox(height: 45),
                const Text(
                  'or use your email for registration',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: const Icon(
                      Icons.person_outline,
                      size: 28,
                      color: Colors.grey,
                    ),
                    hintText: 'Name',
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                MailValidatorFormField(mailController: mailController),
                const SizedBox(height: 15),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      size: 28,
                      color: Colors.grey,
                    ),
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      size: 28,
                      color: Colors.grey,
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  validator: (value) {
                    if (value != passwordController.text) {
                      return 'Senhas estão diferentes';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 45),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      UserModel user = UserModel(id: 0, nome: nameController.text, email: mailController.text, senha: passwordController.text);
                      CreateUser.createUser(user);
                      ref.watch(emailProvider.notifier).state = mailController.text;
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => const ConfirmRegisterPage()),
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
                    child: const Center(
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 20,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'To keep conected with us please login with your personal info',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
