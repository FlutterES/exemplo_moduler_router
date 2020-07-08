import 'package:flutter_exemplo_moduler/presentation/view/login/controllers/login_signin_controller.dart';
import 'package:flutter_exemplo_moduler/presentation/view/login/login_recovery_view.dart';
import 'package:flutter_exemplo_moduler/presentation/view/login/login_signin_view.dart';
import 'package:flutter_exemplo_moduler/presentation/view/login/login_signup_view.dart';
import 'package:moduler_route/moduler_route.dart';

final String _modulePath = "login-module-view";

class LoginModule extends Module {
  static final routePaths = _Routes();

  @override
  String get path => _modulePath;

  @override
  List<ModuleRoute> get routes => [
        ModuleRoute(
          path: routePaths._loginSignInView,
          builder: (_) {
            return LoginSigninView();
          },
          transitionType: RouteTransitionType.fade,
        ),
        ModuleRoute(
          path: routePaths._loginSignUpView,
          builder: (_) {
            return LoginSignupView();
          },
          transitionType: RouteTransitionType.fade,
        ),
        ModuleRoute(
          path: routePaths._loginRecoveryView,
          builder: (arguments) {
            return LoginRecoveryView(
              arguments: arguments,
            );
          },
          transitionType: RouteTransitionType.fade,
        ),
      ];

  @override
  List<Injector> get injections => [
        Injector<LoginSigninController>(
          inject: (_) => LoginSigninController(),
        ),
      ];
}

class _Routes {
  String _loginSignInView = "login-signin-view";
  String _loginSignUpView = "login-signup-view";
  String _loginRecoveryView = "login-recovery-view";

  String get loginSignInView => "$_modulePath/$_loginSignInView";
  String get loginSignUpView => "$_modulePath/$_loginSignUpView";
  String get loginRecoveryView => "$_modulePath/$_loginRecoveryView";
}
