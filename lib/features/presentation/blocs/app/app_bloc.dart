import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/exception/failure.dart';
import '../../../data/shared_preferences/production_shared_preferences.dart';
import '../base/base_bloc.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final ProductionSharedPreferences _sharedPreferences;

  AppBloc(this._sharedPreferences): super(const AppState()){
    init();
  }

  void init() {
    on<OnGetToken>(_onToken);
    add(OnGetToken(_sharedPreferences.user?.token ?? '', _sharedPreferences.user?.refreshToken ?? '', _sharedPreferences.user?.fabId ?? -1));
  }

  _onToken(OnGetToken event, Emitter<AppState> emitter) {
    emitter(state.copyWith(token: event.token, refreshToken: event.refreshToken, fadId: event.fadId));
  }
}
