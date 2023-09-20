import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_app/app.dart';
import 'package:music_app/di/injection.dart';

import 'main.reflectable.dart';

Future<void> main() async {
  initializeReflectable();
  WidgetsFlutterBinding.ensureInitialized();
  await AppInjection.configureInjection();
  // await SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  //   DeviceOrientation.portraitDown,
  // ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light, // For Android (dark icons)
    statusBarBrightness: Brightness.dark, // For iOS (dark icons)
  ));
  runApp(const App());
}
