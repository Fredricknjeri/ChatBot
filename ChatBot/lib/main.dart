import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:ChatBot/ui/views/home.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      
      title: 'ChatBot',
      theme:  ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.black
      ),
      
      debugShowCheckedModeBanner: false,
      home:  HomePageDialogflow(),
    );
  }
}
