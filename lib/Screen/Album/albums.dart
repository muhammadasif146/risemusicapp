import 'package:flutter/material.dart';

class Albums extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[100],
        body: Stack(
          children: <Widget>[
            Center(
              child: Text(''
                  'Albums'),
            )
          ],
        ),
      ),
    );
  }
}
