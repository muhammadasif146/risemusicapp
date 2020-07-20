import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
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

// sign up Box container
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Container(
                    height: screensize.height * 0.54,
                    width: screensize.width * 0.9,
                    //  color: Colors.white,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.indigo[50],
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          //user name
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
                                  keyboardType: TextInputType.text,
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
                              ),
                            ],
                          ),
                        ),
                        // email address
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.email,
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
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                  // labelStyle: TextStyle(color: Colors.black26),
                                  //   hoverColor: Colors.black26,
                                ),
                              ),
                            ),
                          ],
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
                        //ReEnter Password
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
                                    hintText: ' ReEnter PASSWORD ',
                                    hintStyle: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // sign up box button
                        Container(
                          width: screensize.width * 0.5,
                          height: screensize.height * 0.075,
                          decoration: BoxDecoration(
                            color: Colors.deepOrange[300],
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                          ),
                          // sign up button
                          child: FlatButton(
                            hoverColor: Colors.indigo,
                            // highlightColor: Colors.indigo,
                            onPressed: () {
                              debugPrint('press on sign in button');
                            },
                            child: Center(
                              child: Text(
                                'SIGN UP',
                                style:
                                    TextStyle(fontSize: 18, letterSpacing: 2.5),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
//sign up with google account

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Sign Up with Google ',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                            SizedBox(
                              width: 2.0,
                            ),
                            // flat button with google Account
                            FlatButton(
                              onPressed: () {
                                debugPrint('click on signUp button');
                              },
                              hoverColor: Colors.deepOrange[300],
                              highlightColor: Colors.deepOrange[300],
                              child: Row(
                                children: <Widget>[
                                  ImageIcon(
                                    AssetImage('assets/images/googlelogo1.png'),
                                    color: Colors.indigo[300],
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(
                                    'SIGN UP',
                                    style: TextStyle(
                                      fontSize: 21,
                                      color: Colors.indigo[300],
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
