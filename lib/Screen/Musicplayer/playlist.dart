import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:risemusic/utils/CustomWidgetbutton/customwidgetbtn.dart';
import 'package:risemusic/utils/coreofcolor/corecolors.dart';

class PlayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: Stack(
          children: <Widget>[
            CustomButtonWidget(
              child: Icon(
                Icons.favorite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
