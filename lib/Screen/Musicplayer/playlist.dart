import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:risemusic/Screen/Musicplayer/MusicPlayer.dart';
import 'package:risemusic/utils/CustomWidget/customwidgetbtn.dart';
import 'package:risemusic/utils/Modelclass/musicmodel.dart';
import 'package:risemusic/utils/coreofcolor/corecolors.dart';

class PlayList extends StatefulWidget {
  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {
  List<MusicModel> _list;
int _playId;
  @override
  void initState() {
    _playId=3;
    _list=MusicModel.list;
    super.initState();



  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.mainColor,
          centerTitle: true,
          title: Text("Skin Flue",
          style: TextStyle(
            color: AppColors.styleColor,
          ),
          ),
        ),
        backgroundColor: AppColors.mainColor,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomButtonWidget(
                        size: 50,
                          child:Icon(Icons.favorite,
                            color: AppColors.styleColor,
                          ),
                        isActive: true,
                        onTap: (){},
                        ),
                      CustomButtonWidget(
                        size: 150,
                          boederWidth: 5,
                          image: "assets/images/musicLogo.jpg",
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_)=>MusicPlayer()
                              ));
                        },


                          ),
                      CustomButtonWidget(
                        size: 50,
                          onTap: (){},
                          child:Icon(Icons.menu,
                            color: AppColors.styleColor,

                          ) ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                      itemCount: _list.length,
                      padding: EdgeInsets.all(12),
                      itemBuilder: (context ,index)
                      {
                        return GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (_)=>MusicPlayer()
                                ));
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 500),
                            decoration: BoxDecoration(
                              color: _list[index].id==_playId
                                  ?AppColors.activeColor
                                  :AppColors.mainColor,
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                              ),

                            ),
                            padding: EdgeInsets.all(16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_list[index].title,
                                      style:TextStyle(
                                        fontSize: 20,
                                        color: AppColors.styleColor,
                                      ) ,),
                                    Text(_list[index].album,
                                      style:TextStyle(
                                        fontSize: 16,
                                        color: AppColors.styleColor.withAlpha(90),
                                      ) ,),
                                  ],
                                ),
                                CustomButtonWidget(
                                  size: 50,
                                    child:Icon(
                                      _list[index].id==_playId
                                          ? Icons.pause
                                      :Icons.play_arrow,
                                      color: _list[index].id==_playId
                                          ? Colors.white
                                     : AppColors.styleColor,

                                    ),
                                  isActive: _list[index].id==_playId,
                                  onTap: (){
                                    setState(() {
                                      _playId==_list[index].id;
                                    });
                                  },
                                ),
                              ],

                            ),
                          ),
                        );
                      }
                  ),
                ),
              ],

            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.mainColor.withAlpha(0),
                      AppColors.mainColor,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,

                  )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
