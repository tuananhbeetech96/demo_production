import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/data/exception/failure.dart';
import 'package:music_app/features/data/models/login_model/login_response_model.dart';
import 'package:music_app/features/presentation/blocs/base/base_bloc.dart';

import '../../../data/shared_preferences/production_shared_preferences.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends BaseBloc<SplashEvent, SplashState> {
  SplashBloc(this._sharedPreferences) : super(const SplashState());
  final ProductionSharedPreferences _sharedPreferences;

  @override
  void init() {
    on<OnGetUser>(_onGetUser);
    add(OnGetUser(_sharedPreferences.user));
  }

  _onGetUser(OnGetUser event, Emitter<SplashState> emitter) {
    emitter(state.copyWith(user: event.user));
  }
}
