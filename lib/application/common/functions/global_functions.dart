import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Widget fncGetWidget(String nome) {
  return find.byKey(Key(nome)).evaluate().single.widget;
}

TextEditingController fncGetEditingController(String nome) {
  if (fncGetWidget(nome) is TextFormField) return (fncGetWidget(nome) as TextFormField).controller;
  if (fncGetWidget(nome) is TextField) return (fncGetWidget(nome) as TextField).controller;
}

void cancelFocus(BuildContext context) {
  final currentFocus = FocusScope.of(context);
  currentFocus.unfocus();
}
