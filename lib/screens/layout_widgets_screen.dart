import 'package:flutter/material.dart';

class LayoutWidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Layout Widgets'),
        ),
        body: Center(
          child: Container(
            color: Colors.lightGreen,
            child: Row(
              children: [
                Text('test'),
                Text('test'),
                Flexible(
                  flex: 1,
                  child: Text('testtesttest'),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    width: 20,
                    color: Colors.blue,
                  ),
                ),
                Text('test'),
              ],
            ),
          ),
        ));
  }
}
