import 'package:get_it/get_it.dart';
import 'package:music_app/features/data/repositories/image_repository_impl.dart';
import 'package:music_app/features/data/repositories/login_respository_impl.dart';
import 'package:music_app/features/domain/repositories/image_repository.dart';
import 'package:music_app/features/domain/repositories/product_management_repository.dart';
import 'package:music_app/features/domain/repositories/login_repository.dart';

import '../features/domain/repositories/option_item_repository.dart';
import '../features/domain/repositories/section_repository.dart';

class RepositoryDi {
  RepositoryDi._();

  static Future<void> init(GetIt injector) async {
    injector.registerLazySingleton<ImageRepository>(
        () => ImageRepositoryImpl(injector()));

    injector.registerLazySingleton<LoginRepository>(
            () => LoginRepositoryImpl(injector()));
    injector.registerLazySingleton<ProductManagementRepository>(
        () => ProductManagementRepositoryImpl(injector()));
    injector.registerLazySingleton<SectionRepository>(
        () => SectionRepositoryImpl(injector()));
    injector.registerLazySingleton<OptionItemRepository>(
        () => OptionItemRepositoryImpl(injector()));
  }
}
