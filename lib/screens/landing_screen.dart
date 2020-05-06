import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SGF Devs - Intro to Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Built in Widgets'),
              onPressed: () =>
                  Navigator.of(context).pushNamed('/built-in-widgets'),
            ),
            RaisedButton(
              child: Text('State Management'),
              onPressed: () =>
                  Navigator.of(context).pushNamed('/state-management'),
            ),
            RaisedButton(
              child: Text('Networking and JSON'),
              onPressed: () =>
                  Navigator.of(context).pushNamed('/networking-and-json'),
            ),
            RaisedButton(
              child: Text('Interacting with Native'),
              onPressed: () =>
                  Navigator.of(context).pushNamed('/interacting-with-native'),
            ),
          ],
        ),
      ),
    );
  }
}
