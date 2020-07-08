import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exemplo_moduler/presentation/view/app/app_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Future.delayed(Duration(seconds: 10));
  final bool logado = false;
  runApp(
    AppView(logado),
  );
}
