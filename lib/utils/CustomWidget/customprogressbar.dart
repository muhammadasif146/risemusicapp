import 'package:flutter/material.dart';
import 'package:risemusic/utils/CustomWidget/customwidgetbtn.dart';
import 'package:risemusic/utils/coreofcolor/corecolors.dart';
class CustomProgressbar extends StatefulWidget {
  // final double value;
  // final String labelStart;
  // final String labelEnd;
  // CustomProgressbar(this.value, this.labelStart,this.labelEnd);
  @override
  _CustomProgressbarState createState() => _CustomProgressbarState();
}

class _CustomProgressbarState extends State<CustomProgressbar> {
@override
void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    return Container(
      height: 50,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('data',style: TextStyle(
                  color: AppColors.styleColor,
                ),),
                Text('data',style: TextStyle(
                  color: AppColors.styleColor,
                ),)
              ],
            ),
          ),
          _mainProgressBar(width),
          _progressValue(width ),
          _indicationButton(width),

        ],
      ),
    );
  }
  Widget _indicationButton(double width){
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 40,
        width: width,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(),
            ),
            CustomButtonWidget(
              size: 30,
              onTap: null,
              child: Icon(
                Icons.fiber_manual_record,
                size: 20,
                color: AppColors.darkBlue,
              ),
            )
          ],
        ),


      ),
    );
  }
  Widget _progressValue(double width){
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 5,
        width: width,
        decoration: BoxDecoration(
            color: AppColors.lightBlue,
            border: Border.all(
                color: AppColors.styleColor.withAlpha(90),
                width: .5
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            // boxShadow:[
            //   BoxShadow(
            //     color: AppColors.styleColor.withAlpha(90),
            //     spreadRadius: 1,
            //     blurRadius: 1,
            //     offset: Offset(1,-1),
            //   ),
            // ]

        ),
      ),
    );
  }
 Widget _mainProgressBar( double width){
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: 5,
        width: width,
        decoration: BoxDecoration(
            color: AppColors.mainColor,
            border: Border.all(
                color: AppColors.styleColor.withAlpha(90),
                width: .5
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            boxShadow:[
              BoxShadow(
                color: AppColors.styleColor.withAlpha(90),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1,-1),
              ),
            ]

        ),
      ),
    );
 }
}
