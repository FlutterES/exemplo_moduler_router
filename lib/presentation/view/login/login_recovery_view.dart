import 'package:flutter/material.dart';
import 'package:flutter_exemplo_moduler/application/common/widgets/material_button_widget.dart';

class LoginRecoveryView extends StatefulWidget {
  final Map<String, dynamic> arguments;

  const LoginRecoveryView({
    Key key,
    this.arguments,
  }) : super(key: key);

  @override
  _LoginRecoveryViewState createState() => _LoginRecoveryViewState();
}

class _LoginRecoveryViewState extends State<LoginRecoveryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Recovery"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Form(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        initialValue: widget.arguments['nome'],
                        decoration: InputDecoration(
                          labelText: "E-mail",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButtonWidget(
                  onTap: () {},
                  child: Text(
                    "Recuperar Senha",
                    style: TextStyle(letterSpacing: 1, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
