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
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text('Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Text(
                '$num',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 115),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            num++;
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.green)),
                        child: Row(
                          children: [Icon(Icons.add), Text('Add')],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num--;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.deepOrangeAccent)),
                      child: Row(
                        children: [
                          Icon(Icons.minimize),
                          Text('Minus'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      num = 0;
                    });
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red)),
                  child: Container(
                    width: 60,
                    child: (Row(
                      children: [
                        Icon(Icons.undo_sharp),
                        Text('Reset'),
                      ],
                    )),
                  )),
            ],
          ),
        ));
  }
}
