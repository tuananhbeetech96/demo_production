part of 'login_bloc.dart';

abstract class LoginEvent {}

class GetLoginEvent extends LoginEvent {
  final String mail;
  final String pass;
  GetLoginEvent(this.mail, this.pass);
}
class OnChangeTextUser extends LoginEvent {
   final String text;
   OnChangeTextUser(this.text);
}

class OnChangeTextPassword extends LoginEvent {
  final String text;
  OnChangeTextPassword(this.text);
}

