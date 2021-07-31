import 'package:flutter/material.dart';
import 'package:login_register_ui/constants/constants.dart';

class NeumorphicTextFieldContainer extends StatelessWidget {
  final Widget child;
  const NeumorphicTextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: appPadding / 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                offset: Offset(-2, -2),
                spreadRadius: 1,
                blurRadius: 4,
                color: darkShadow),
            BoxShadow(
                offset: Offset(2, 2),
                spreadRadius: 1,
                blurRadius: 4,
                color: lightShadow),
          ],
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [lightPrimary, darkPrimary])),
      child: child,
    );
  }
}
