import 'package:flutter/material.dart';
import 'package:risemusic/utils/CustomWidgetbutton/customwidgetbtn.dart';
import 'package:risemusic/utils/coreofcolor/corecolors.dart';

class MusicPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
     // backgroundColor: Colors.indigo[100],
          backgroundColor: AppColors.mainColor,
      body: Stack(
        children: <Widget>[
         Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(12),
               child: Row(

                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   CustomButtonWidget(
                     size: 50,
                     onTap: (){
                       Navigator.of(context).pop();
                     },
                     child: Icon(Icons.arrow_back,
                     color: AppColors.styleColor,
                     ),
                   ),
                   Text("Playing Now",
                   style: TextStyle(
                     color: AppColors.styleColor,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                   CustomButtonWidget(
                     size: 50,
                     onTap: (){
                      // Navigator.of(context).pop();
                     },
                     child: Icon(Icons.menu,
                       color: AppColors.styleColor,
                     ),
                   ),
                 ],
               ),
             ),
             CustomButtonWidget(
               size: MediaQuery.of(context).size.width *0.65,
               boederWidth: 5,
               image: "assets/images/musicLogo.jpg",
               onTap: (){
                 // Navigator.of(context).push(
                 //     MaterialPageRoute(builder: (_)=>MusicPlayer()
                 //     ));
               },

             ),
             Row(

             )
           ],
         ),
        ],
      ),
    ));
  }
}
