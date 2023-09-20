part of 'splash_bloc.dart';

abstract class SplashEvent {}

class OnGetUser extends SplashEvent {
  final LoginResponseModel? user;
  OnGetUser(this.user);
}