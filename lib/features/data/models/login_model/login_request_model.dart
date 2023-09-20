
import 'dart:convert';

class LoginRequestModel {
  final String mailaddress;
  final String password;

  LoginRequestModel({required this.mailaddress, required this.password});

  LoginRequestModel copyWith({
    String? mailaddress,
    String? password,
  }) {
    return LoginRequestModel(
        mailaddress: mailaddress ?? this.mailaddress,
        password: password ?? this.password);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mailaddress': mailaddress,
      'password': password
    };
  }

  factory LoginRequestModel.fromMap(Map<String, dynamic> map) {
    return LoginRequestModel(
        mailaddress: map['mailaddress'] as String,
        password: map['password'] as String);
  }

  String toJson() => json.encode(toMap());

  factory LoginRequestModel.fromJson(String source) =>
      LoginRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'LoginRequest(username: $mailaddress, password: $password)';

  @override
  bool operator ==(covariant LoginRequestModel other) {
    if (identical(this, other)) return true;

    return other.mailaddress == mailaddress && other.password == password;
  }

  @override
  int get hashCode => mailaddress.hashCode ^ password.hashCode;
}