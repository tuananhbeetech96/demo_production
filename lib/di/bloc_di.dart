import 'package:get_it/get_it.dart';
import 'package:music_app/features/presentation/blocs/blocs.dart';
import 'package:music_app/features/presentation/blocs/product_management/product_management_bloc.dart';

import '../features/presentation/blocs/login/login_bloc.dart';

class BlocDi {
  BlocDi._();

  static Future<void> init(GetIt injector) async {
    injector.registerLazySingleton(() => AppBloc());
    injector.registerFactory(() => SplashBloc(injector()));
    injector.registerFactory(() => HomeBloc(injector()));
    injector.registerFactory(() => LoginBloc(injector(), injector()));
    injector.registerFactory(() => ProductManagementBloc(injector(), injector(), injector(), injector()));
  }
}
