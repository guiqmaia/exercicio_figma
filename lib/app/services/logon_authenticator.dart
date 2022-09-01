import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

import '../domain/user_model.dart';

class LogonAuthenticator {
  static Future<UserModel> userAuthenticator(String email, String senha) async {
    UserModel user = UserModel(id: 0, nome: '', email: '', senha: '');
    try {
      final dio = Dio();
      Map<String, dynamic> myMap = {
        "email": email,
        "password": senha,
      };
      final response = await dio.post(
        "http://192.168.0.142/api/Access/Logon",
        data: jsonEncode(myMap),
      );
      if (response.statusCode == 200) {
        user = UserModel.fromMap(jsonDecode(response.data));
        return user;
      }
    } catch (e) {
      debugPrint('$e');
    }
    return user;
  }
}
