import 'package:flutter/material.dart';
import 'constent.dart';


class ReusableCard extends StatelessWidget {

  ReusableCard({@required this.colour , this.cardChild, this.onpress});
  final Color colour;
  final Widget cardChild;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child:cardChild,

        decoration: BoxDecoration(

            color: colour,
            borderRadius: BorderRadius.circular(10)
        ),

        margin: EdgeInsets.all(15),
      ),
    );
  }
}


