import 'package:flutter/material.dart';

class BuiltInWidgetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouts'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Basic UI widgets'),
              onPressed: () => Navigator.of(context)
                  .pushNamed('/built-in-widgets/basic-ui-widgets'),
            ),
            RaisedButton(
              child: Text('Layout Widgets'),
              onPressed: () => Navigator.of(context)
                  .pushNamed('/built-in-widgets/layout-widgets'),
            ),
            RaisedButton(
              child: Text('ListView'),
              onPressed: () =>
                  Navigator.of(context).pushNamed('/built-in-widgets/list-view'),
            ),
            RaisedButton(
              child: Text('Forms and Inputs'),
              onPressed: () => Navigator.of(context)
                  .pushNamed('/built-in-widgets/forms-and-inputs'),
            ),
          ],
        ),
      ),
    );
  }
}
