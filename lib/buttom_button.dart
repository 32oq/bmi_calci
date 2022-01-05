import 'package:flutter/material.dart';
import 'constent.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;
  BottomButton({this.buttonTitle , this.onTap});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,


      child: Container(
        child: Text(buttonTitle,
          style: kLargeButton,

        ),
        padding: EdgeInsets.only(top:20,left:100,bottom: 20,right: 50),
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        height: kbottomContainerheight,
        width: double.infinity,

      ),
    );
  }
}