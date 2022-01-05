import 'package:flutter/material.dart';
import 'constent.dart';


class IconContent extends StatelessWidget {
  final IconData inputIcon;
  final String label;
  IconContent({@required this.inputIcon , this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(

          inputIcon,
          size:80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: klabelTextStyle,
        )
      ],
    );
  }
}

