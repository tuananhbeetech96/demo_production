import 'package:get_it/get_it.dart';
import 'package:music_app/features/data/shared_preferences/production_shared_preferences.dart';
import 'package:music_app/features/data/shared_preferences/production_shared_preferences_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDi {
  SharedPreferencesDi._();

  static Future<void> init(GetIt injector) async {
    final sharedPref = await SharedPreferences.getInstance();
    injector.registerSingleton<ProductionSharedPreferences>(
        ProductionSharedPreferenceImpl(sharedPref));
  }
}