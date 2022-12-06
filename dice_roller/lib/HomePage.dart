import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget { 
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  late AssetImage diceImage;
  late AssetImage diceImage1;

  @override
  void initState(){
    super.initState();
    setState(() {
      diceImage = one;
      diceImage1 = one;
    });
  }

  void rollDice(){
    int randomvalue = (1 + Random().nextInt(6));
    int randomvalue1 = (1 + Random().nextInt(6));

    late AssetImage newImage;
    late AssetImage newImage1;

    switch (randomvalue) {
      case 1: 
        newImage = one;
        break;
      case 2: 
        newImage = two;
        break;
      case 3: 
        newImage = three;
        break;
      case 4: 
        newImage = four;
        break;
      case 5: 
        newImage = five;
        break;
      case 6: 
        newImage = six;
        break;
    }

    switch (randomvalue1) {
      case 1: 
        newImage1 = one;
        break;
      case 2: 
        newImage1 = two;
        break;
      case 3: 
        newImage = three;
        break;
      case 4: 
        newImage1 = four;
        break;
      case 5: 
        newImage1 = five;
        break;
      case 6: 
        newImage1 = six;
        break;
    }
    setState(() {
      diceImage =  newImage;
      diceImage1 = newImage1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dice Roller")
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceImage,
                height: 200.0,
                width: 200.0,
              ),
              Image(
                image: diceImage1,
                height: 200.0,
                width: 200.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: MaterialButton(  
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
                  child: Text("Roll the dice"),
                  onPressed: rollDice,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}