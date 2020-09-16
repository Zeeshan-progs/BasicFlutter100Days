import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String label;
  final Color hintColor;
  final IconButton icons;
  final bool obscurePassword;
  final TextInputType textInputType;
  const CustomTextField({
    Key key,
    this.hint,
    this.icons,
    this.hintColor,
    this.obscurePassword = false,
    this.textInputType,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  EdgeInsets.all(18.0),
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: hint,
            labelText: label,
            labelStyle: TextStyle(fontSize: 13),
            hintStyle: TextStyle(
              color: hintColor,
              fontSize: 18,
            ),
            suffixIcon: icons,
            isCollapsed: true,
            // use to avoid keyboard appearnce error
          ),
          obscureText: obscurePassword,
          keyboardType: textInputType,
        ),
      ),
    );
  }
}

/// Label of Sign In And Sgn Up
//

class CustomText extends StatelessWidget {
  final String label;
  final Color myColor;
  final double size;
  final TextDecoration myDecoration;
  const CustomText({
    Key key,
    this.label,
    this.myColor = Colors.white,
    this.size = 50,
    this.myDecoration, // default color to white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: size,
        color: myColor,
        decoration: myDecoration,
      ),
    );
  }
}
