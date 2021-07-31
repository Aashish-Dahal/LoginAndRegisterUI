import 'package:flutter/material.dart';
import 'package:login_register_ui/constants/constants.dart';
import 'package:login_register_ui/screens/signIn/components/credentials.dart';
import 'package:login_register_ui/screens/signIn/components/social.dart';

import 'components/head_text.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

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
