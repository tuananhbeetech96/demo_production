import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:music_app/core/constants/route_constants.dart';
import 'package:music_app/features/presentation/ui/screen/product_management/product_management_screen.dart';
import 'package:music_app/features/presentation/ui/screen/login/login_screen.dart';

import '../features/presentation/ui/screen/screens.dart';

class ScreenDi {
  ScreenDi._();

  static Future<void> init(GetIt injector) async {
    injector.registerFactory<Widget>(() => const SplashScreen(),
        instanceName: RouteConstants.splash);
    injector.registerFactory<Widget>(() => const HomeScreen(),
        instanceName: RouteConstants.home);
    injector.registerFactory<Widget>(() => const ProductManagementScreen(),
        instanceName: RouteConstants.productManagement);
    injector.registerFactory<Widget>(() => const LoginScreen(),
        instanceName: RouteConstants.login);
  }
}
