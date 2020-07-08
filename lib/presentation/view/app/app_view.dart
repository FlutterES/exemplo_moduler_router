import 'package:flutter_exemplo_moduler/presentation/view/home/modules/home_module.dart';
import 'package:flutter_exemplo_moduler/presentation/view/login/modules/login_module.dart';
import 'package:get/get.dart';
import 'package:moduler_route/moduler_route.dart';
import 'package:flutter/material.dart';

class AppView extends StatelessWidget with Moduler {
  final bool logado;

  AppView(this.logado);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Get.key,
      initialRoute: initialRoute(() {
        return logado ? HomeModule.routePaths.homeModuleView : LoginModule.routePaths.loginSignInView;
      }),
      onGenerateRoute: routeTo,
      onUnknownRoute: unknownRoute,
      navigatorObservers: [
        modulerRouteObserver,
      ],
    );
  }

  @override
  List<Injector> get globalInjections => [];

  @override
  List<Module> get modules => [
        HomeModule(),
        LoginModule(),
      ];
}
