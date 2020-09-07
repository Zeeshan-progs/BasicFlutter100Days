// Day 14 Credit card package
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_credit_card/credit_card_model.dart';

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
// create variables to store details

  String cardNumber = '';
  String expairyDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        body:Column(
          children: [
            // use Credit Card Widget to for all details that you want to upload
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expairyDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
            ),

            Expanded(
              child: SingleChildScrollView(
                child: CreditCardForm(
                  onCreditCardModelChange: onCreditCardModelChange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
// custom method to apply changes im credit card form widget
  void onCreditCardModelChange(CreditCardModel creditcardModel) {
    setState(() {
      cardNumber = creditcardModel.cardNumber;
      expairyDate = creditcardModel.expiryDate;
      cardHolderName = creditcardModel.cardHolderName;
      cvvCode = creditcardModel.cvvCode;
      isCvvFocused = creditcardModel.isCvvFocused;
    });
  }
}





// that's it for today 

// subscribe 
// like 
// share








//100DaysOfFlutter



//100DaysOfCode




// jai Hind