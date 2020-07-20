import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:risemusic/Screen/MusicPlayer.dart';
import 'package:risemusic/Screen/albums.dart';
import 'package:risemusic/Screen/artists.dart';
import 'package:risemusic/Screen/homeScreen.dart';
import 'package:risemusic/Screen/playlist.dart';

import 'drawerScreen.dart';

class DashScreen extends StatefulWidget {
  @override
  _DashScreenState createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen>
    with TickerProviderStateMixin<DashScreen> {
  final List<Widget> _list = [
    HomeScreen(),
    PlayList(),
    Albums(),
    Artists(),
    MusicPlayer()
  ];

  int _currentIndex = 0;

  //initial stage

  //dispose stage

  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: <Widget>[
          SafeArea(
            top: false,
            child: Scaffold(
                backgroundColor: Colors.indigo[100],
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(70),
                  child: AppBar(
                    backgroundColor: Colors.indigo[100],
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        '            Rise Music',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Piedra',
                          fontStyle: FontStyle.normal,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    elevation: 0,
                    flexibleSpace: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.deepOrange[400],
                            // Colors.brown[300],
                            Colors.indigo[300],
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                drawer: DrawerScreen(),
                bottomNavigationBar: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  child: Container(
                    height: 65,
                    child: BottomNavigationBar(
                        currentIndex: _currentIndex,
                        onTap: (int index) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                        items: [
                          BottomNavigationBarItem(
                              icon: Icon(
                                Icons.home,
                                color: Colors.indigo[300],
                              ),
                              title: Text(
                                'Home',
                                style: TextStyle(color: Colors.indigo[300]),
                              )),
                          BottomNavigationBarItem(
                              icon: Icon(
                                Icons.shop_two,
                                color: Colors.indigo[300],
                              ),
                              title: Text(
                                'Playlist',
                                style: TextStyle(color: Colors.indigo[300]),
                              )),
                          BottomNavigationBarItem(
                              icon: Icon(
                                Icons.queue_music,
                                color: Colors.indigo[300],
                              ),
                              title: Text(
                                'Albums',
                                style: TextStyle(color: Colors.indigo[300]),
                              )),
                          BottomNavigationBarItem(
                              icon: Icon(
                                Icons.group,
                                color: Colors.indigo[300],
                              ),
                              title: Text(
                                'Artist',
                                style: TextStyle(color: Colors.indigo[300]),
                              )),
                          BottomNavigationBarItem(
                              icon: Icon(
                                Icons.library_music,
                                color: Colors.indigo[300],
                              ),
                              title: Text(
                                'Songs',
                                style: TextStyle(color: Colors.indigo[300]),
                              )),
                        ]),
                  ),
                ),
                body: _list[_currentIndex]),
          )
        ],
      ),
    );
  }
}
