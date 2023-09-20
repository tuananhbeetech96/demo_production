part of 'splash_bloc.dart';

class SplashState extends BaseState<SplashState> {
  final bool isNavigateToHome;
  final LoginResponseModel? user;

  const SplashState(
      {super.isLoading, super.error, this.isNavigateToHome = false, this.user});

  @override
  SplashState copyWith({
    bool isLoading = false,
    Failure? error,
    bool isNavigateToHome = false,
    LoginResponseModel? user
  }) =>
      SplashState(
        isLoading: isLoading,
        error: error,
        user: user ?? this.user,
        isNavigateToHome: isNavigateToHome,
      );
}
