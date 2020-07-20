import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Login.dart';

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToLogin() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: screensize.width,
        height: screensize.height,
        decoration: BoxDecoration(
          // image: DecorationImage(
          //  image: const AssetImage('assets/images/background Splach.jpg'),
          // fit: BoxFit.fill,
          // colorFilter: new ColorFilter.mode(
          //    Colors.black.withOpacity(0.4), BlendMode.dstIn),
          // ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepOrange[500],
              Colors.brown[300],
              Colors.indigo[300],
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 250, left: 20, right: 20),
                child: Container(
                  height: screensize.height * 0.3,
                  width: screensize.width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                      image: const AssetImage('assets/images/logo.jpg'),
                      fit: BoxFit.fill,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.dstIn),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Text(
                  'Welcome to Rise Music',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Piedra',
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
