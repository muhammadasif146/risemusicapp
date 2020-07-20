import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
//back ground
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
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  //logo
                  child: Container(
                    height: screensize.height * 0.1,
                    width: screensize.width * 0.2,
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
                //box of container
              ],
            ),
          ),
        ),
      ),
    );
  }
}
