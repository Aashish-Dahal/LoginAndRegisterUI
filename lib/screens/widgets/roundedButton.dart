import 'package:flutter/material.dart';
import 'package:login_register_ui/constants/constants.dart';

class RoundedButton extends StatelessWidget {
  final String imgSrc;
  final VoidCallback press;
  const RoundedButton({Key? key, required this.imgSrc, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Container(
          padding: EdgeInsets.only(top: appPadding, bottom: appPadding / 2),
          child: Container(
            padding: EdgeInsets.all(appPadding / 2),
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [lightPrimary, darkPrimary],
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(3, 3),
                      spreadRadius: 1,
                      blurRadius: 4,
                      color: darkShadow),
                  BoxShadow(
                      offset: Offset(-5, -5),
                      spreadRadius: 1,
                      blurRadius: 4,
                      color: lightShadow),
                ]),
            child: Image.asset(imgSrc),
          ),
        ));
  }
}
