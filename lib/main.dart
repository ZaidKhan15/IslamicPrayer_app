import 'package:flutter/material.dart';
import 'package:prayer_app/adhan/adzan.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp
({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home:  Adzan(),
    );
  }
}