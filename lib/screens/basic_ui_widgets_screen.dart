import 'package:flutter/material.dart';

class BasicUiWidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic UI Widgets'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'This is some text',
            style: TextStyle(fontSize: 23, color: Colors.deepPurpleAccent),
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: Text('This is some padded text'),
          ),
          Container(
            width: 200,
            height: 100,
            color: Colors.yellowAccent,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Text('Some more text'),
            color: Colors.orange,
          ),
          RaisedButton(
            onPressed: () {
              print('Button pressed');
            },
            child: Text('A button'),
          ),
          Card(
            elevation: 3,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text('I am a card'),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Gesture detector tapped');
            },
            child: Card(
              elevation: 10,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text('Gesture detector'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
