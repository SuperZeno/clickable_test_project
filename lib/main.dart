import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(Facebook());
}

class Facebook extends StatefulWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  var _listOfQ = [
    'how old are you ?',
    'what is ur name ?',
    'what is ur job ?',
    'what is ur fav color ?'
  ];
  int _num1=0;
  int _num = 0;
  void randomNum(){

    setState(() {
      _num1=Random().nextInt(6)+1;

    });  }
  void list() {
    setState(() {
      _num = Random().nextInt(4);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('my app'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              InkWell(
                onTap: () {
                  list();
                },
                child: Text(
                  _listOfQ[_num].toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                  onTap: (){
                    randomNum();
                  },

                  child: Text(_num1.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
            ],

          ),
        ),
      ),
    );
  }
}
