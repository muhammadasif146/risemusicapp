import 'package:flutter/material.dart';

class RadioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Radio'),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: Text('Radio'),
            )
          ],
        ),
      ),
    );
  }
}
