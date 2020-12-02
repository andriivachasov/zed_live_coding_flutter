import 'package:flutter/material.dart';
import 'package:zed_livecoding_flutter/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Simpsons',
      ),
      darkTheme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
