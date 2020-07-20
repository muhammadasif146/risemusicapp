import 'package:flutter/material.dart';

class MusicRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('MusicRegistration'),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: Text('MusicRegistration'),
            )
          ],
        ),
      ),
    );
  }
}
