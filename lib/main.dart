import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('DICE GAME PROJECT'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 5;
  int rightDiceNumber = 2;
  void buttonFunction() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/back1.png'),
        ),
      ),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    buttonFunction();
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  buttonFunction();
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
