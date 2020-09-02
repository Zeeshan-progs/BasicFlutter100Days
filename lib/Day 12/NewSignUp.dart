import 'package:flutter/material.dart';
import 'package:flutter100days/Day%2012/Style.dart';

class NewSignUp extends StatefulWidget {
  @override
  _NewSignUpState createState() => _NewSignUpState();
}

class _NewSignUpState extends State<NewSignUp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Image.asset('assets/BackSign.png'),
              Padding(
                padding: EdgeInsets.only(
                  top: size.height / 6,
                  left: size.width / 4,
                ),
                child: CustomText(
                  label: 'Create ',
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: size.height / 4,
                  left: size.width / 6,
                ),
                child: CustomText(label: 'Account'),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height / 2.6),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    CustomTextField(
                      hint: 'Name',
                      hintColor: Colors.white,
                    ),
                    CustomTextField(
                      hint: 'Email',
                      hintColor: Colors.white,
                    ),
                    CustomTextField(
                      hint: 'Password',
                      hintColor: Colors.white,
                      icons: IconButton(
                          icon: Icon(Icons.visibility_off),
                          onPressed: () {}),
                          obscurePassword: true,
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
