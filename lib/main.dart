import 'package:flutter/material.dart';
import 'package:intro_app/screens/basic_ui_widgets_screen.dart';
import 'package:intro_app/screens/forms_and_inputs_screen.dart';

import 'package:intro_app/screens/landing_screen.dart';
import 'package:intro_app/screens/build_in_widgets_screen.dart';
import 'package:intro_app/screens/layout_widgets_screen.dart';
import 'package:intro_app/screens/list_view_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SGF Devs Intro to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/landing',
      routes: {
        '/landing': (context) => LandingScreen(),
        '/built-in-widgets': (context) => BuiltInWidgetsScreen(),
        '/built-in-widgets/basic-ui-widgets': (context) => BasicUiWidgetsScreen(),
        '/built-in-widgets/layout-widgets': (context) => LayoutWidgetsScreen(),
        '/built-in-widgets/list-view': (context) => ListViewScreen(),
        '/built-in-widgets/forms-and-inputs': (context) => FormsAndInputsScreen(),
      },
    );
  }
}
