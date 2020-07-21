import 'package:flutter/material.dart';

import 'Screen/LoginandSignUp/SplachScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SplachScreen(),
    );
  }
}
