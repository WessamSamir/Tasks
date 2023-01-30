import 'package:flutter/material.dart';
import 'package:tasks/shoppers.dart';
import 'detail_screen.dart';
import 'login.dart';
import 'login2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Shoppers(),
    );
  }

}
