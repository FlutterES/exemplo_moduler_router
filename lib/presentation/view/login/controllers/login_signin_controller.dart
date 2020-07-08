import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'login_signin_controller.g.dart';

class LoginSigninController = _LoginSigninControllerBase with _$LoginSigninController;

abstract class _LoginSigninControllerBase with Store implements Disposable {
  @observable
  String login;
  @observable
  String senha;
  @observable
  bool hidePasswordState;
  @observable
  bool manterStatus;

  _LoginSigninControllerBase() {
    init();
  }

  init() {
    setHidePasswordState(true);
    setManterStatus(false);
  }

  @action
  setHidePasswordState(bool value) {
    hidePasswordState = value;
  }

  @action
  setManterStatus(bool value) {
    manterStatus = value;
  }

  @override
  void dispose() {
    //
  }
}
