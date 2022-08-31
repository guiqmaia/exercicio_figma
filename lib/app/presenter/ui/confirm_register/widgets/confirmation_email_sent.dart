import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../riverpod/email_provider.dart';

class ConfirmationEmailSent extends HookConsumerWidget {
  const ConfirmationEmailSent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String email = ref.watch(emailProvider);
    return Text(
      email,
      style: const TextStyle(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 17,
        letterSpacing: 0.5,
      ),
      textAlign: TextAlign.center,
    );
  }
}
