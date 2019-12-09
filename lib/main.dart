import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
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
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image(
              image: AssetImage('images/dice1.png'),
            ),
          ),
          Expanded(
            child: Image(
              image: AssetImage('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
