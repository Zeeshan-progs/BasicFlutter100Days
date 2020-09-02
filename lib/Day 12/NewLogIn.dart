// Day 12 Today Let's Create a log in page ui

import 'NewSignUp.dart';
import 'Style.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class NewLogin extends StatefulWidget {
  @override
  _NewLoginState createState() => _NewLoginState();
}

class _NewLoginState extends State<NewLogin> {
  ConfettiController control = ConfettiController();
  @override
  void initState() {
    control = ConfettiController(duration: Duration(seconds: 10));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    control.dispose();
  }

  // Size size = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset('assets/LogBack.png'),
                Positioned(
                  top: 100,
                  left: 50,
                  child: CustomText(label: 'Welcome'),
                ),
                Positioned(
                  top: 150,
                  left: 80,
                  child: CustomText(label: 'Back'),
                ),
              ],
            ),
            CustomTextField(
              hint: 'Enter name ',
            ),
            CustomTextField(
              hint: 'Password',
              icons: IconButton(
                icon: Icon(Icons.visibility),
                onPressed: () {},
              ),
              obscurePassword: true,
            ),
            // we will learn how to hide or show password in text field letter

            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomText(
                  label: 'Sign In',
                  myColor: Colors.black,
                ),
                ConfettiCelebration(control: control),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      control.play();
                    });
                  },
                  child: CircleAvatar(
                    radius: 37,
                    backgroundColor: Color.fromRGBO(118, 65, 107, 1),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return NewSignUp();
                      }));
                    });
                  },
                  child: CustomText(
                    label: 'Sign Up',
                    myColor: Colors.black,
                    size: 26,
                    myDecoration: TextDecoration.underline,
                  ),
                ),
                CustomText(
                  label: 'Forget Password',
                  myColor: Colors.black,
                  size: 26,
                  myDecoration: TextDecoration.underline,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class ConfettiCelebration extends StatelessWidget {
  const ConfettiCelebration({
    Key key,
    @required this.control,
  }) : super(key: key);

  final ConfettiController control;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: ConfettiWidget(
        confettiController: control,
        blastDirectionality: BlastDirectionality.explosive,
      ),
    );
  }
}
