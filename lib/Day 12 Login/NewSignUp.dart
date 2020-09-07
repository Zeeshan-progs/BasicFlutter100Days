import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

import 'NewLogIn.dart';
import 'Style.dart';

class NewSignUp extends StatefulWidget {
  @override
  _NewSignUpState createState() => _NewSignUpState();
}

class _NewSignUpState extends State<NewSignUp> {
  ConfettiController control = ConfettiController();

  @override
  void initState() {
    super.initState();
    control = ConfettiController(
      duration: Duration(seconds: 10),
    );
  }

  @override
  void dispose() {
    super.dispose();
    control.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.only(top: size.height / 3),
                child: Form(
                  child: Column(
                    children: [
                      CustomTextField(
                        hint: 'Name',
                        hintColor: Colors.white,
                      ),
                      CustomTextField(
                        hint: 'Email',
                        hintColor: Colors.white,
                        textInputType: TextInputType.emailAddress,
                        // text input type use to distingwish keyboard keys
                      ),
                      CustomTextField(
                        hint: 'Password',
                        hintColor: Colors.white,
                        icons: IconButton(
                            icon: Icon(Icons.visibility),
                            onPressed: () {}),
                        obscurePassword: true,
                      ),
                      CustomTextField(
                        hint: 'Confirm Password',
                        hintColor: Colors.white,
                        icons: IconButton(
                            icon: Icon(Icons.visibility),
                            onPressed: () {}),
                        obscurePassword: true,
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                        children: [
                          CustomText(
                            label: 'Sign Up',
                            size: 40,
                          ),
                          ConfettiWidget(confettiController: control),
                          CircleAvatar(
                            radius: 37,
                            backgroundColor:
                                Color.fromRGBO(117, 68, 107, 1),
                            child: IconButton(
                              onPressed: () {
                                control.play();
                              },
                              icon: Icon(
                                Icons.arrow_forward,
                                size: 36,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NewLogin(),
                            ),
                          );
                        },
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: CustomText(
                            label: 'Sign in',
                            size: 30,
                            myDecoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
