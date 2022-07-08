import 'package:flutter/material.dart';

void main() => runApp(FirstApp());

class FirstApp extends StatelessWidget {

  void myFunctionForOnPress(){
    print("Button Pressed");
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
            Text('Hello World'),
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
