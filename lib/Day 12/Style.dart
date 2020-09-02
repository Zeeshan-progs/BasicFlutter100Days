import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Color hintColor;
  final IconButton icons;
  final bool obscurePassword;
  const CustomTextField({
    Key key,
    this.hint,
    this.icons,
    this.hintColor, this.obscurePassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            color: hintColor,
          ),
          suffixIcon: icons,
          isCollapsed: true, // use to avoid keyboard appearnce error
        ),
        obscureText: obscurePassword,
        
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
