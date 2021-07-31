import 'package:flutter/material.dart';
import 'package:login_register_ui/screens/signIn/signInScreen.dart';
import 'package:login_register_ui/screens/signUp/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neumorphic SignIn And SignUP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignIn(),
    );
  }
}
