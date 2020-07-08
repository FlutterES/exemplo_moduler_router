import 'package:flutter/material.dart';
import 'package:flutter_exemplo_moduler/application/common/functions/global_functions.dart';
import 'package:flutter_exemplo_moduler/application/common/widgets/material_button_widget.dart';
import 'package:flutter_exemplo_moduler/presentation/view/home/modules/home_module.dart';
import 'package:flutter_exemplo_moduler/presentation/view/login/controllers/login_signin_controller.dart';
import 'package:flutter_exemplo_moduler/presentation/view/login/modules/login_module.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';
import 'package:moduler_route/moduler_route.dart';

class LoginSigninView extends StatefulWidget {
  @override
  _LoginSigninViewState createState() => _LoginSigninViewState();
}

class _LoginSigninViewState extends State<LoginSigninView> {
  // final LoginSigninController controller = Inject.get();

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login Signin"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Observer(
                    builder: (BuildContext context) {
                      return Form(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("assets/user_avatar.png"),
                                radius: 100,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                key: Key("edtLogin"),
                                keyboardType: TextInputType.emailAddress,
                                // controller: TextEditingController(text: controller.login ?? ""),
                                initialValue: Inject.get<LoginSigninController>().login ?? "",
                                onChanged: (text) {
                                  Inject.get<LoginSigninController>().login = text;
                                },
                                decoration: InputDecoration(
                                  labelText: "Nome do Usuário",
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 5,
                                    child: TextFormField(
                                      key: Key("edtSenha"),
                                      keyboardType: TextInputType.visiblePassword,
                                      initialValue: Inject.get<LoginSigninController>().senha,
                                      obscureText: Inject.get<LoginSigninController>().hidePasswordState,
                                      onChanged: (text) {
                                        Inject.get<LoginSigninController>().senha = text;
                                      },
                                      decoration: InputDecoration(
                                        labelText: "Senha",
                                        floatingLabelBehavior: FloatingLabelBehavior.always,
                                        border: OutlineInputBorder(
                                          borderRadius: new BorderRadius.only(
                                            topLeft: const Radius.circular(15.0),
                                            bottomLeft: const Radius.circular(15.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 60,
                                      decoration: new BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: new BorderRadius.only(
                                          topRight: const Radius.circular(15.0),
                                          bottomRight: const Radius.circular(15.0),
                                        ),
                                      ),
                                      // color: Colors.blue,
                                      child: IconButton(
                                          icon: Inject.get<LoginSigninController>().hidePasswordState
                                              ? Icon(
                                                  FontAwesomeIcons.eye,
                                                  color: Colors.white,
                                                )
                                              : Icon(FontAwesomeIcons.eyeSlash, color: Colors.white),
                                          onPressed: () {
                                            Inject.get<LoginSigninController>().setHidePasswordState(
                                                !Inject.get<LoginSigninController>().hidePasswordState);
                                          }),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButtonWidget(
                      onTap: () {
                        Get.toNamed(HomeModule.routePaths.homeModuleView);
                        cancelFocus(context);
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(letterSpacing: 1, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Map<String, dynamic> aux = {"nome": "claudney"};
                        Get.toNamed(LoginModule.routePaths.loginRecoveryView, arguments: aux);
                        cancelFocus(context);
                      },
                      child: Text(
                        "Esqueceu a sua senha?",
                        style: TextStyle(letterSpacing: 1, color: Colors.blue),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(LoginModule.routePaths.loginSignUpView);
                        cancelFocus(context);
                      },
                      child: Text(
                        "Registre-se",
                        style: TextStyle(letterSpacing: 1, color: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
