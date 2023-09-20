import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/data/models/login_model/login_request_model.dart';
import 'package:music_app/features/data/models/login_model/login_response_model.dart';
import 'package:music_app/features/presentation/blocs/base/base_bloc.dart';

import '../../../data/exception/failure.dart';
import '../../../data/shared_preferences/production_shared_preferences.dart';
import '../../../domain/usecases/get_login.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends BaseBloc<LoginEvent, LoginState> {
  LoginBloc(this._getLoginUseCase, this._sharedPreferences) : super(const LoginState());

  final GetLogin _getLoginUseCase;
  final ProductionSharedPreferences _sharedPreferences;

  @override
  void init() {
    on<GetLoginEvent>(_getLogin);
    on<OnChangeTextUser>(_onChangeUser);
    on<OnChangeTextPassword>(_onChangePassword);
  }

  _onChangeUser(OnChangeTextUser event, Emitter<LoginState> emitter) {
    emitter(state.copyWith(textUser: event.text));
  }

  _onChangePassword(OnChangeTextPassword event, Emitter<LoginState> emitter) {
    emitter(state.copyWith(textPass: event.text));
  }

  _getLogin(GetLoginEvent getLoginEvent, Emitter<LoginState> emitter) async {
    emitter(state.copyWith(isLoading: true));
    (await _getLoginUseCase(LoginRequestModel(mailaddress: getLoginEvent.mail, password: getLoginEvent.pass))).fold((data) {
      print(data?.data?.token);
      if(data?.statusCode == 200){
        if(data?.data != null){
          _sharedPreferences.user = data?.data;
        }
        emitter(state.copyWith(success: true, user: data?.data));
      } else {
        emitter(state.copyWith());
      }
    }, (error) {
      emitter(state.copyWith(error: error));
    });
  }
}
