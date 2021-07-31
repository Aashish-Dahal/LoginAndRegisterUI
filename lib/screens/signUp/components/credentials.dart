import 'package:flutter/material.dart';
import 'package:login_register_ui/constants/constants.dart';
import 'package:login_register_ui/screens/widgets/rectangleInputField.dart';
import 'package:login_register_ui/screens/widgets/rectangularButton.dart';

class Credentials extends StatelessWidget {
  const Credentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RectangularInputField(
              hintText: 'User Name', icon: Icons.person, obscureText: false),
          SizedBox(
            height: appPadding / 2,
          ),
          RectangularInputField(
              hintText: 'Email', icon: Icons.email_rounded, obscureText: false),
          SizedBox(
            height: appPadding / 2,
          ),
          RectangularInputField(
              hintText: 'Password', icon: Icons.lock, obscureText: true),
          SizedBox(
            height: appPadding / 2,
          ),
          RectangularButton(
            text: 'Sign Up',
            press: () {},
          )
        ],
      ),
    );
  }
}
