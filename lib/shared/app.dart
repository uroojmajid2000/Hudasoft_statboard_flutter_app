import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statboard_flutter_app/shared/providers/bloc_providers.dart';
import 'package:statboard_flutter_app/shared/providers/repository_providers.dart';
import 'package:statboard_flutter_app/shared/route_aware/route_observer.dart';
import 'package:statboard_flutter_app/shared/routes/routes.dart';
import 'package:statboard_flutter_app/shared/theme/theme_data.dart';

import '../features/user/presentation/screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // return MaterialApp(
    //   title: 'Statboard',
    //   debugShowCheckedModeBanner: false,
    //   theme: AppTheme.themeData(),
    //   initialRoute: SplashScreen.id,
    //   routes: Routes.routes,
    //   navigatorObservers: [routeObserver],
    // );

    return MultiRepositoryProvider(
      providers: RepositoryProviders.providers,
      child: MultiBlocProvider(
        providers: BlocProviders.providers,
        child: MaterialApp(
          title: 'Statboard',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.themeData(),
          initialRoute: SplashScreen.id,
          routes: Routes.routes,
          navigatorObservers: [routeObserver],
        ),
      ),
    );
  }
}
