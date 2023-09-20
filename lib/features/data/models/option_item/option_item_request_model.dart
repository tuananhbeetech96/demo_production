
import 'dart:convert';

class OptionItemRequestModel {
  final String token;
  final String refreshToken;
  final int type;

  OptionItemRequestModel({required this.token, required this.refreshToken, required this.type});

  OptionItemRequestModel copyWith({
    String? token,
    String? refreshToken,
    int? type
  }) {
    return OptionItemRequestModel(
        token: token ?? this.token,
        refreshToken: refreshToken ?? this.refreshToken,
        type: type ?? this.type);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'refresh_token': refreshToken,
      'type': type
    };
  }

  factory OptionItemRequestModel.fromMap(Map<String, dynamic> map) {
    return OptionItemRequestModel(
        token: map['token'] as String,
        refreshToken: map['refresh_token'] as String,
        type: map['type'] as int);
  }

  String toJson() => json.encode(toMap());

  factory OptionItemRequestModel.fromJson(String source) =>
      OptionItemRequestModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'OptionItemRequestModel(token: $token, fabId: $refreshToken, type" $type)';

  @override
  bool operator ==(covariant OptionItemRequestModel other) {
    if (identical(this, other)) return true;

    return other.token == token && other.refreshToken == refreshToken && other.type == type;
  }

  @override
  int get hashCode => token.hashCode ^ refreshToken.hashCode ^ type.hashCode;
}