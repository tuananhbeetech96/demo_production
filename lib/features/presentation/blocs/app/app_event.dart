part of 'app_bloc.dart';

abstract class AppEvent {}

class OnGetToken extends AppEvent {
  final String token;
  final String refreshToken;
  final int fadId;
  OnGetToken(this.token, this.refreshToken, this.fadId);
}
