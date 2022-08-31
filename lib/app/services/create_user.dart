import 'package:dio/dio.dart';
import 'package:exercicio_figma/app/domain/user_model.dart';
import 'package:flutter/foundation.dart';

class CreateUser {
  static void createUser(UserModel model) async {
    try {
      final dio = Dio();

      final response = await dio.post(
        'http://192.168.0.142/api/Usuario',
        data: {
          "email": model.email,
          "password": model.senha,
          "nome": model.nome,
          "id": 0,
        },
      );
    } catch (e) {
      debugPrint("$e");
    }
  }
}
