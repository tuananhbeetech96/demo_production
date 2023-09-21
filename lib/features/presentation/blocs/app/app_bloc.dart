import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/exception/failure.dart';
import '../base/base_bloc.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc(): super(const AppState());

  @override
  void init() {
    on(_handleTokenExpired);
  }

  _handleTokenExpired(ExpiredTokenEvent event,Emitter emitter){
      emitter(state.copyWith());
  }
}
