import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: GoogleFonts.aladin(fontSize: 25),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
          elevation: 0,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 4;
  int rightDiceNumber = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = _generateRandomNumber(leftDiceNumber);
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = _generateRandomNumber(rightDiceNumber);
                });
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int _generateRandomNumber(int oldNumber) {
    bool whatDice = Random.secure().nextBool();
    int number = Random.secure().nextInt(6)+1;
    int number2 = Random.secure().nextInt(6)+1;
    if(whatDice){
      while(oldNumber==number){
        number = Random.secure().nextInt(6)+1;
      }
    }else{
      while(leftDiceNumber==number){
        number = Random.secure().nextInt(6)+1;
      }
      while(rightDiceNumber==number2){
        number2 = Random.secure().nextInt(6)+1;
      }
      leftDiceNumber=number;
      rightDiceNumber=number2;
    }
    return number;
  }
}
