import 'dart:convert';

class UserModel {
  int id;
  String nome;
  String email;
  String senha;
  UserModel({
    required this.id,
    required this.nome,
    required this.email,
    required this.senha,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'nome': nome});
    result.addAll({'email': email});
    result.addAll({'senha': senha});

    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['Id']?.toInt() ?? 0,
      nome: map['Nome'] ?? '',
      email: map['email'] ?? '',
      senha: map['password'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
