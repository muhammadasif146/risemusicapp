import 'package:flutter/material.dart';

import 'file:///C:/Users/Muhammad%20Asif/risemusic/lib/Screen/LoginandSignUp/signUp.dart';
import 'file:///C:/Users/Muhammad%20Asif/risemusic/lib/Screen/dashScreen/dashScreen.dart';
import 'file:///C:/Users/Muhammad%20Asif/risemusic/lib/Screen/forgetpassword/forgotPassword.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                    height: screensize.height * 0.2,
                    width: screensize.width * 0.4,
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
                  padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  //login box
                  child: Container(
                    height: screensize.height * 0.5,
                    width: screensize.width * 0.9,
                    //  color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.indigo[50],
                    ),
                    child: Column(
                      children: <Widget>[
                        //username
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.perm_identity,
                                color: Colors.indigo[300],
                              ),
                              SizedBox(width: 5),
                              Container(
                                width: screensize.width * 0.6,
                                child: TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 16),
                                  decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    hintText: 'USERNAME',
                                    hintStyle: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                    // labelStyle: TextStyle(color: Colors.black26),
                                    //   hoverColor: Colors.black26,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        // password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.lock_open,
                              color: Colors.indigo[300],
                            ),
                            SizedBox(width: 5),
                            Container(
                              width: screensize.width * 0.6,
                              child: TextFormField(
                                obscureText: true,
                                style: TextStyle(
                                    color: Colors.grey[700], fontSize: 14),
                                decoration: InputDecoration(
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    hintText: 'PASSWORD',
                                    hintStyle: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ),
                            )
                          ],
                        ),
                        //end password
                        SizedBox(
                          height: 10,
                        ),
                        // for get password
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  debugPrint('click on forget password');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ForgotPassword()),
                                  );
                                },
                                hoverColor: Colors.deepOrange[300],
                                highlightColor: Colors.deepOrange[300],
                                child: Center(
                                  child: Text('FORGOT PASSWORD?',
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.indigo[300],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // end for get password
                        SizedBox(
                          height: 20,
                        ),
                        // sign in button
                        Container(
                          width: screensize.width * 0.5,
                          height: screensize.height * 0.075,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange[300],
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                          ),
                          child: FlatButton(
                            hoverColor: Colors.indigo,
                            // highlightColor: Colors.indigo,
                            onPressed: () {
                              debugPrint('press on sign in button');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashScreen()),
                              );
                            },
                            child: Center(
                              child: Text(
                                'SIGN IN',
                                style:
                                    TextStyle(fontSize: 18, letterSpacing: 2.5),
                              ),
                            ),
                          ),
                        ),
// end login button
                        SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Don\'t have an Account?',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            GestureDetector(
                              child: FlatButton(
                                onPressed: () {
                                  debugPrint('click on signUp button');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUp()),
                                  );
                                },
                                hoverColor: Colors.deepOrange[300],
                                highlightColor: Colors.deepOrange[300],
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 21,
                                    color: Colors.indigo[300],
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
