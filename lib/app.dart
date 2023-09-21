import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:music_app/config/app_routes.dart';
import 'package:music_app/core/core.dart';
import 'package:music_app/features/presentation/blocs/blocs.dart';
import 'package:music_app/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class App extends StatelessWidget {
  App({super.key});

  final _navKey = GlobalKey<NavigatorState>();

  void _navigateToLogin() {
    _navKey.currentState?.popUntil((r) => r.isFirst);
    _navKey.currentState?.pushReplacementNamed(RouteConstants.login);
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener(listener: (context,state){
      _navigateToLogin();
    },bloc: GetIt.I.get<AppBloc>(),
    child:  MaterialApp(
      navigatorKey: _navKey,
      supportedLocales: L10n.all,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('vi'),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.getRoute,
      initialRoute: RouteConstants.splash,
      navigatorObservers: [routeObserver],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    ),);

  }
}
