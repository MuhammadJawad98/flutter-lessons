import 'package:flutter/material.dart';
import 'package:untitled6/views/MyListView.dart';
import 'package:untitled6/views/first_screen.dart';
import 'package:untitled6/widgets/custom_elevated_button.dart';
import 'package:untitled6/widgets/custom_textfield.dart';

void main() {
  runApp(const MyApp());
  //in flutter everything is a widget
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyListView()
        );
  }
}

