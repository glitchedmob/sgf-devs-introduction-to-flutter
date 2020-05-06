import 'package:flutter/material.dart';

class FormsAndInputsScreen extends StatefulWidget {
  @override
  _FormsAndInputsScreenState createState() => _FormsAndInputsScreenState();
}

class _FormsAndInputsScreenState extends State<FormsAndInputsScreen> {
  final textController = TextEditingController(text: 'default text');
  final _formKey = GlobalKey<FormState>();
  var formValue = '';

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms and Inputs'),
      ),
      body: ListView(
        children: [
          TextField(
            controller: textController,
            onChanged: (value) {
              setState(() {});
            },
          ),
          RaisedButton(
            child: Text('submit'),
            onPressed: () {
              print(textController.text);
            },
          ),
          Text(textController.text, style: TextStyle(fontSize: 20)),
          SizedBox(height: 50),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (value) {
                    print('saving');
                    formValue = value;
                  },
                  validator: (value) {
                    print('validating');
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                RaisedButton(
                  child: Text('submit'),
                  onPressed: () {
                    if(_formKey.currentState.validate()) {
                      _formKey.currentState.save();
                      print('Form value: $formValue');
                    }
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
