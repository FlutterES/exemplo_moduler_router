// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_signin_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginSigninController on _LoginSigninControllerBase, Store {
  final _$loginAtom = Atom(name: '_LoginSigninControllerBase.login');

  @override
  String get login {
    _$loginAtom.reportRead();
    return super.login;
  }

  @override
  set login(String value) {
    _$loginAtom.reportWrite(value, super.login, () {
      super.login = value;
    });
  }

  final _$senhaAtom = Atom(name: '_LoginSigninControllerBase.senha');

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  final _$hidePasswordStateAtom =
      Atom(name: '_LoginSigninControllerBase.hidePasswordState');

  @override
  bool get hidePasswordState {
    _$hidePasswordStateAtom.reportRead();
    return super.hidePasswordState;
  }

  @override
  set hidePasswordState(bool value) {
    _$hidePasswordStateAtom.reportWrite(value, super.hidePasswordState, () {
      super.hidePasswordState = value;
    });
  }

  final _$manterStatusAtom =
      Atom(name: '_LoginSigninControllerBase.manterStatus');

  @override
  bool get manterStatus {
    _$manterStatusAtom.reportRead();
    return super.manterStatus;
  }

  @override
  set manterStatus(bool value) {
    _$manterStatusAtom.reportWrite(value, super.manterStatus, () {
      super.manterStatus = value;
    });
  }

  final _$_LoginSigninControllerBaseActionController =
      ActionController(name: '_LoginSigninControllerBase');

  @override
  dynamic setHidePasswordState(bool value) {
    final _$actionInfo = _$_LoginSigninControllerBaseActionController
        .startAction(name: '_LoginSigninControllerBase.setHidePasswordState');
    try {
      return super.setHidePasswordState(value);
    } finally {
      _$_LoginSigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setManterStatus(bool value) {
    final _$actionInfo = _$_LoginSigninControllerBaseActionController
        .startAction(name: '_LoginSigninControllerBase.setManterStatus');
    try {
      return super.setManterStatus(value);
    } finally {
      _$_LoginSigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
login: ${login},
senha: ${senha},
hidePasswordState: ${hidePasswordState},
manterStatus: ${manterStatus}
    ''';
  }
}
