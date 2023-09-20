part of 'app_bloc.dart';

class AppState extends BaseState<AppState>{
  final String? token;
  final String? refreshToken;
  final int? fadId;

  const AppState(
      {super.isLoading, super.error, this.token, this.refreshToken, this.fadId});

  @override
  AppState copyWith({
    bool isLoading = false,
    Failure? error,
    String? token,
    String? refreshToken,
    int? fadId,
  }) =>
      AppState(
        isLoading: isLoading,
        error: error,
        token: token,
        refreshToken: refreshToken,
        fadId: fadId,
      );
}
