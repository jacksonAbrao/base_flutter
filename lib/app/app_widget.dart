import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:base_flutter/app/core/ui/ui_config.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/auth/');
    Modular.setObservers([asuka.asukaHeroController]);

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, __) => MaterialApp.router(
        title: UiConfig.title,
        debugShowCheckedModeBanner: false,
        builder: asuka.builder,
        theme: UiConfig.theme,
        darkTheme: UiConfig.darkTheme,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}
