import 'package:flutter/material.dart';

class PlayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[100],
        body: Stack(
          children: <Widget>[
            Center(
              child: Text('PlayList'),
            )
          ],
        ),
      ),
    );
  }
}
