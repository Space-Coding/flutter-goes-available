import 'package:flutter/material.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstAppState();
  }
}

class FirstAppState extends State<FirstApp> {
  var myList = [
    'hello world!',
    'GoodBye world!',
  ];

  var listIndex = 0;

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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(myList[listIndex]),
            ElevatedButton(
              onPressed: myFunctionForOnPress,
              child: Text('Press me!'),
            )
          ],
        ),
      ),
    );
  }
}
