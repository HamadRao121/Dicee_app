import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int diceNumber1=1;
  int diceNumber2=1;


  void updatedice(){
    setState((){
      diceNumber1=Random().nextInt(6)+1;
      diceNumber2=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.blueAccent,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Expanded(child: Column
                  (
                  children: [
                    Text('$diceNumber1',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900, color: Colors.red),),
                    FlatButton (child:Image.asset('lib/img/dice$diceNumber1.png'),onPressed:() {
                      updatedice();
                    },),
                  ],
                )),
                Expanded(child: Column
                  (
                  children: [
                    Text('$diceNumber2',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.w900, color: Colors.red),),
                    FlatButton (child:Image.asset('lib/img/dice$diceNumber2.png'),onPressed:() {
                      updatedice();
                    },),
                  ],
                )),
              ],
            ),
          ),
          ),
        ),
      ),
    );
  }
}
