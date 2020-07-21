import 'package:flutter/material.dart';

class MusicCategery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Music Category'),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: Text('Music Category'),
            )
          ],
        ),
      ),
    );
  }
}
