import 'package:flutter/material.dart';
import 'package:prayer_app/adhan/adzan.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

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