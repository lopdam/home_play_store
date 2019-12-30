import 'package:flutter/material.dart';
import 'package:home_play_store/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Google Play",
      home: DefaultTabController(
        length: 6,
        child: Home(),
      ),
    );
  }
}
