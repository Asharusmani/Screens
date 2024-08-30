import 'package:flutter/material.dart';
import 'package:ui_screen/pages/login.dart';
import 'package:ui_screen/pages/register.dart';

void main() {
  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context) => Mylogin(),
      'register':(context) => MyRegister()
    },
  ));
}

