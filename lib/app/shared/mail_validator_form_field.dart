import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../riverpod/email_provider.dart';

class MailValidatorFormField extends HookConsumerWidget {
  const MailValidatorFormField({
    Key? key,
    required this.mailController,
  }) : super(key: key);

  final TextEditingController mailController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String mail = ref.watch(emailProvider);
    return TextFormField(
      controller: mailController,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: const Icon(
          Icons.mail_outline,
          size: 28,
          color: Colors.grey,
        ),
        hintText: 'Email',
        hintStyle: const TextStyle(
          fontSize: 20,
          color: Colors.grey,
        ),
      ),
      validator: (value) {
        if (!EmailValidator.validate(value!)) {
          mail = value.toString();
          return 'Email inválido';
        }
        return null;
      },
    );
  }
}
