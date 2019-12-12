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
            style: GoogleFonts.aladin(),
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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDice=4;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Image(
                image: AssetImage('images/dice$leftDice.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {},
              child: Image(
                image: AssetImage('images/dice2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
