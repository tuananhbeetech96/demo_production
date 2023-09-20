import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/exception/failure.dart';
import '../base/base_bloc.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(): super(const AppState());
}
