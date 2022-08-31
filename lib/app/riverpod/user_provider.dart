import 'package:exercicio_figma/app/services/logon_authenticator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/user_model.dart';

var userProvider = StateNotifierProvider<UserNotifier, UserModel?>((ref) => UserNotifier());

UserModel user = UserModel(id: 0, nome: '', email: '', senha: '');

class UserNotifier extends StateNotifier<UserModel?> {
  UserNotifier() : super(user) {
    getUserInfo('', '');
  }

  Future<void> getUserInfo(String email, String senha) async {
    user = await LogonAuthenticator.userAuthenticator(email, senha);
    Future.delayed(const Duration(seconds: 2));
    state = user;
  }
}
