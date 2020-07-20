import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

// ignore: must_be_immutable
class SwiperCards extends StatelessWidget {
  //image list

  //tittle list

  @override
  Widget build(BuildContext context) {
    List urlImages = [
//trending music
      'https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      // new songs
      'https://images.pexels.com/photos/1644616/pexels-photo-1644616.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      //audio songs
      'https://images.pexels.com/photos/761963/pexels-photo-761963.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      //vedio songs
      'https://images.pexels.com/photos/4467997/pexels-photo-4467997.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      // news
      'https://images.pexels.com/photos/4057663/pexels-photo-4057663.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      // radio
      'https://images.pexels.com/photos/3491709/pexels-photo-3491709.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500',
      //music player
      'https://images.pexels.com/photos/3194469/pexels-photo-3194469.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500'
    ];
    List<String> tittleList = [
      'Trending Songs',
      'New Songs',
      'Audio Songs',
      'Video Songs',
      'News',
      'Radio',
      'Music Player'
    ];
    return SizedBox(
      width: 10,
      child: Swiper(
        // ignore: missing_return
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[
              Container(
                height: 160,
                width: 374,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0)),
                    color: Colors.blueGrey,
                    image: DecorationImage(
                      image: NetworkImage(urlImages[index]),
                      fit: BoxFit.cover,
                    )),

                //fit: BoxFit.cover)),
              ),
              Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      tittleList[index],
                      style: TextStyle(color: Colors.indigo[500]),
                    ),
                  )),
            ],
          );
        },

        itemCount: 7,
        //  layout: SwiperLayout.STACK,
      ),
    );
  }
}
