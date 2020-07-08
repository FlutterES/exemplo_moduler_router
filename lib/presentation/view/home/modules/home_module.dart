import 'package:flutter_exemplo_moduler/presentation/view/home/home_view.dart';
import 'package:moduler_route/moduler_route.dart';

final String _modulePath = "home-module";

class HomeModule extends Module {
  static final routePaths = _Routes();

  @override
  String get path => _modulePath;

  @override
  List<ModuleRoute> get routes => [
        ModuleRoute(
          path: routePaths._homeModuleView,
          builder: (_) {
            return HomeView();
          },
          transitionType: RouteTransitionType.fade,
        ),
      ];

  @override
  List<Injector> get injections => [];
}

class _Routes {
  String _homeModuleView = "home-view";

  String get homeModuleView => "$_modulePath/$_homeModuleView";
}
