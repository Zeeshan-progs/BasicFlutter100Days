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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset('assets/LogBack.png'),
                Positioned(
                  top: 150,
                  left: 50,
                  child: Column(
                    children: [
                      CustomText(
                        label: 'Welcome',
                        size: 40,
                        myColor: Colors.white,
                      ),
                      CustomText(
                        label: 'Back',
                        size: 40,
                        myColor: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name ',
                      hintText: 'Enter Name',
                      isCollapsed: false,
                    ),
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      isCollapsed: false,
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        boldStyle: FontWeight.bold,
                        label: 'Sign in',
                        size: 40,
                      ),
                      ConfettiCelebration(control: control),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            control.play();
                          });
                          print('Confetti blast');
                        },
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.black,
                          child: Icon(Icons.arrow_forward,size: 50),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('Sign up Clicked');
                        },
                        child: CustomText(
                          label: 'Sign up',
                          size: 30,
                          boldStyle: FontWeight.bold,
                          myDecoration: TextDecoration.underline,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Forget Password Tapped');
                        },
                        child: CustomText(
                          label: 'Forget Password',
                          size: 30,
                          myDecoration: TextDecoration.underline,
                          boldStyle: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
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

class CustomText extends StatelessWidget {
  final String label;
  final double size;
  final Color myColor;
  final FontWeight boldStyle;
  final TextDecoration myDecoration;

  const CustomText({
    Key key,
    this.label,
    this.size,
    this.myColor = Colors.black,
    this.myDecoration,
    this.boldStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: size,
        color: myColor,
        decoration: myDecoration,
        fontWeight: boldStyle,
      ),
    );
  }
}
