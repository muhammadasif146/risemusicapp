import 'package:flutter/material.dart';
import 'package:risemusic/utils/coreofcolor/corecolors.dart';

class CustomButtonWidget extends StatelessWidget {
  final Widget child;

  CustomButtonWidget({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(200),
          ),
          border: Border.all(
            width: 2,
            color: AppColors.mainColor,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.lightBlueShadow,
              blurRadius: 10,
              offset: Offset(5, 5),
              spreadRadius: 3,
            ),
            BoxShadow(
              color: Colors.white,
              blurRadius: 5,
              offset: Offset(-5, -5),
              spreadRadius: 3,
            )
          ],
          gradient: RadialGradient(colors: [
            AppColors.mainColor,
            AppColors.mainColor,
            AppColors.mainColor,
            Colors.white
          ])),
      child: child,
    );
    //;
  }
}
