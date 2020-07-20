import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:risemusic/utils/swipcards.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
//String musiCcat='https://images.pexels.com/photos/3756766/pexels-photo-3756766.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940';

    return SafeArea(
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            //main container/ back container
            child: Container(
//back ground
              width: screensize.width,
              height: screensize.height * 0.75,

              // color: Colors.indigo[100],
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        //contain 1 big container
                        child: Container(
                          height: 200,
                          width: screensize.width,
                          //   color: Colors.white,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white),
                          child: SwiperCards(),
                        ),
                      ),

                      //music category
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        //second container
                        child: Container(
                          height: 140,
                          width: screensize.width,
                          decoration: (BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/3756766/pexels-photo-3756766.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                              fit: BoxFit.cover,
                            ),
                          )),
                          child: Text(
                            'Music Category',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                      // music registration
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        //third container
                        child: Container(
                          height: 140,
                          width: screensize.width,
                          decoration: (BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/164938/pexels-photo-164938.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                                fit: BoxFit.cover,
                              ))),
                          child: Text(
                            'Music Registration',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      //Album Release
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        // fourth container
                        child: Container(
                          height: 140,
                          width: screensize.width,
                          decoration: (BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/3007347/pexels-photo-3007347.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                                fit: BoxFit.cover,
                              ))),
                          child: Text(
                            'Album Release',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      //News
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        // fourth container
                        child: Container(
                          height: 140,
                          width: screensize.width,
                          decoration: (BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.pexels.com/photos/1369476/pexels-photo-1369476.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                              fit: BoxFit.cover,
                            ),
                          )),
                          child: Text(
                            'News',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      //Radio
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        // fourth container
                        child: Container(
                          height: 140,
                          width: screensize.width,
                          decoration: (BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/1539/vintage-technology-music-old.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                                fit: BoxFit.cover,
                              ))),
                          child: Text(
                            'Radio',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),

                      //Artist
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        // fourth container
                        child: Container(
                          height: 140,
                          width: screensize.width,
                          decoration: (BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/4031864/pexels-photo-4031864.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                                fit: BoxFit.cover,
                              ))),
                          child: Text(
                            'Artist',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),

                      //Songs
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        // fourth container
                        child: Container(
                          height: 140,
                          width: screensize.width,
                          decoration: (BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.white,
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://images.pexels.com/photos/1652361/pexels-photo-1652361.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'),
                                fit: BoxFit.cover,
                              ))),
                          child: Text(
                            'Songs',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
