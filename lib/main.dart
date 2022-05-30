import 'package:flutter/material.dart';
import 'package:flutter_application_1/book_model.dart';
import 'package:flutter_application_1/home_screen.dart';
import 'package:flutter_application_1/selected_book.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
