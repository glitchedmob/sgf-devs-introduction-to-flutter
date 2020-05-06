import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView.separated(
        itemCount: 200,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('item $index'),
            onTap: () {
              print('selected $index');
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider(thickness: 4, color: Colors.black,);
        },
      ),
    );
  }
}
