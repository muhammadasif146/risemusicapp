import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
      child: Container(
        height: screensize.height,
        width: 300,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
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
                accountName: Text('Asif Ali'),
                accountEmail: Text('asif123@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://in.pinterest.com/pin/677088125212835475'),
                ),
              ),
              CustomTileList(Icons.home, 'Home', () => {}),
              CustomTileList(Icons.person, 'Profile', () => {}),
              CustomTileList(Icons.music_note, 'Music Registration', () => {}),
              CustomTileList(Icons.library_music, 'Music Downloader', () => {}),
              CustomTileList(Icons.radio, 'Radio', () => {}),
              CustomTileList(Icons.line_style, 'News', () => {}),
              CustomTileList(Icons.power_settings_new, 'Log out', () => {}),
              CustomTileList(Icons.settings, 'Setting', () => {}),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTileList extends StatelessWidget {
  IconData iconData;
  String text;
  Function onTap;

  CustomTileList(this.iconData, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.deepOrange,
        child: Container(
          height: 50,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 25, right: 0, bottom: 0),
                child: Icon(
                  iconData,
                  color: Colors.indigo,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 12,
                ),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 20, color: Colors.indigo[900]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
