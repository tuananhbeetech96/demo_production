part of 'login_bloc.dart';

class LoginState extends BaseState<LoginState>{

  final String textUser;
  final String textPass;
  final bool success;
  final LoginResponseModel? user;

  const LoginState({super.isLoading, super.error, this.textUser = "", this.textPass = "", this.success = false, this.user});

  @override
  LoginState copyWith({bool isLoading = false, Failure? error, String? textUser, String? textPass, bool success = false, LoginResponseModel? user}) {
    return LoginState(
        textUser: textUser ?? this.textUser,
        textPass: textPass ?? this.textPass,
        user: user,
        success: success,
        isLoading: isLoading,
        error: error
    );
  }}