import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo[100],
        appBar: AppBar(
          title: Text('NewsPage'),
        ),
        body: Stack(
          children: <Widget>[
            Center(
              child: Text('News page'),
            )
          ],
        ),
      ),
    );
  }
}
