import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../domain/user_model.dart';

class GetUser {
  static Future<UserModel?> getUser(int id) async {
    try {
      final dio = Dio();

      final response = await dio.post(
        'http://192.168.0.142/api/Usuario/$id',
      );
      UserModel model = response.data.map((model) => UserModel.fromMap(model));
      return model;
    } catch (e) {
      debugPrint("$e");
    }
    return null;
  }
}
