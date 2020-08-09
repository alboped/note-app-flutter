import 'package:flutter/material.dart';
import 'package:note_app/navigator/tab_navigator.dart';

void main() => runApp(new RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: 'Welcome to Flutter', home: TabNavigator());
  }
}
