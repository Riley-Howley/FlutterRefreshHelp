import 'package:flutter/material.dart';
import 'package:refresh_help/refresh_screen.dart';
import 'package:refresh_help/requests.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getAllWords();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RefreshScreen(),
    );
  }
}
