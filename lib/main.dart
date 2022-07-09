import 'package:flutter/material.dart';

void main() => runApp(FirstApp());

var myList = [
    'hello world!',
    'GoodBye world!',
  ];

var listIndex = 0;

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: BodyText(),
      ),
    );
  }
}

class BodyText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BodyTextState();
  }
}

class BodyTextState extends State<BodyText> {
  
  void myFunctionForOnPress() {
    setState(() {
      listIndex = listIndex + 1;
      if (listIndex >= myList.length) {
        listIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          myList[listIndex],
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        ElevatedButton(
          onPressed: myFunctionForOnPress,
          child: Text('Press me!'),
        )
      ],
    );
  }
}
