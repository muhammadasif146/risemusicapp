import 'package:flutter/material.dart';
import 'package:risemusic/utils/coreofcolor/corecolors.dart';

class CustomButtonWidget extends StatelessWidget {
  final Widget child;
  final double size;
 final double boederWidth;
 final String image;
final bool isActive;
final VoidCallback onTap;
  CustomButtonWidget({
    this.child,
    @required this.size,
    @required this.onTap,
     this.boederWidth = 2 ,
    this.image = null,
    this .isActive=false,

  });

  @override
  Widget build(BuildContext context) {
    var boxDecoration=BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(200),
        ),
        border: Border.all(
          width: boederWidth,
          color: isActive ? AppColors.darkBlue : AppColors.mainColor,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightBlueShadow,
            blurRadius: 10,
            offset: Offset(5, 5),
            spreadRadius: 3,
          ),
          BoxShadow(
            color: Colors.white60,
            blurRadius: 5,
            offset: Offset(-5, -5),
            spreadRadius: 3,
          )
        ],
       );

    if( image != null ){
      boxDecoration=boxDecoration.copyWith(
        image: DecorationImage(
          image: ExactAssetImage(image),
          fit: BoxFit.cover,
        ),

      );
    }
    if (isActive)
      {
        boxDecoration= boxDecoration.copyWith(
            gradient: RadialGradient(colors: [
              AppColors.lightBlue,
              AppColors.darkBlue,
              // AppColors.mainColor,
              // Colors.white
            ])
        );

      }
    else{
      boxDecoration= boxDecoration.copyWith(
          gradient: RadialGradient(colors: [
            AppColors.mainColor,
            AppColors.mainColor,
            AppColors.mainColor,
            Colors.white
          ])
      );

    }
    return Container(
      height: size,
      width: size,
      decoration:boxDecoration,
      child: FlatButton(
        padding: EdgeInsets.all(0),
          onPressed: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(200)
          )
        ),
          child: child ?? Container(),
      ),
    );
    //;
  }
}
