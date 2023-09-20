
import 'dart:convert';

class SectionRequestModel {
  final String token;
  final String refreshToken;

  SectionRequestModel({required this.token, required this.refreshToken});

  SectionRequestModel copyWith({
    String? token,
    String? refreshToken,
  }) {
    return SectionRequestModel(
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'refresh_token': refreshToken
    };
  }

  factory SectionRequestModel.fromMap(Map<String, dynamic> map) {
    return SectionRequestModel(
        token: map['token'] as String,
        refreshToken: map['refresh_token'] as String);
  }

  String toJson() => json.encode(toMap());

  factory SectionRequestModel.fromJson(String source) =>
      SectionRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SectionRequestModel(token: $token, fabId: $refreshToken)';

  @override
  bool operator ==(covariant SectionRequestModel other) {
    if (identical(this, other)) return true;

    return other.token == token && other.refreshToken == refreshToken;
  }

  @override
  int get hashCode => token.hashCode ^ refreshToken.hashCode;
}