import 'package:flutter/material.dart';
import 'package:login_register_ui/constants/constants.dart';
import 'package:login_register_ui/screens/signIn/signInScreen.dart';
import 'package:login_register_ui/screens/widgets/accountCheck.dart';
import 'package:login_register_ui/screens/widgets/roundedButton.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OR',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedButton(imgSrc: 'assets/images/google.png', press: () {}),
              RoundedButton(imgSrc: 'assets/images/facebook.png', press: () {}),
              RoundedButton(imgSrc: 'assets/images/twitter.png', press: () {})
            ],
          ),
        ),
        SizedBox(
          height: appPadding,
        ),
        AccountCheck(
            login: false,
            press: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => SignIn()));
            })
      ],
    );
  }
}
