part of 'app_bloc.dart';

class AppState extends BaseState<AppState>{

  const AppState(
      {super.isLoading, super.error});

  @override
  AppState copyWith({
    bool isLoading = false,
    Failure? error
  }) =>
      AppState(
        isLoading: isLoading,
        error: error
      );
}
