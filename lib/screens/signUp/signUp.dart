import 'package:flutter/material.dart';
import 'package:login_register_ui/constants/constants.dart';

import 'package:login_register_ui/screens/signUp/components/social.dart';
import 'package:login_register_ui/screens/signUp/components/credentials.dart';
import 'package:login_register_ui/screens/signUp/components/headText.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [lightPrimary, darkPrimary])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [HeadText(), Credentials(), Social()],
          ),
        ),
      ),
    );
  }
}
