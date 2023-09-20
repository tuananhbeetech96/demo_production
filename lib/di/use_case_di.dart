import 'package:get_it/get_it.dart';
import 'package:music_app/features/domain/usecases/get_login.dart';
import 'package:music_app/features/domain/usecases/get_product.dart';
import 'package:music_app/features/domain/usecases/product_management_usecase.dart';

import '../features/domain/usecases/get_option_item.dart';
import '../features/domain/usecases/get_section.dart';

class UseCaseDi {
  UseCaseDi._();

  static Future<void> init(GetIt injector) async {
    injector.registerLazySingleton(() => GetRandomImage(injector()));
    injector.registerLazySingleton(() => GetLogin(injector()));
    injector.registerLazySingleton(() => ProductManagementUseCase(injector()));
    injector.registerLazySingleton(() => GetSection(injector()));
    injector.registerLazySingleton(() => GetOptionItem(injector()));
  }
}
