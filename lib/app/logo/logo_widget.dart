import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              "assets/logo.svg",
              color: Colors.white,
            ),
            SizedBox(width: 10),
            Text(
              "Matheus",
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        Icon(
          Icons.keyboard_arrow_down,
          color: Colors.white.withOpacity(0.54),
          size: 20,
        ),
      ],
    );
  }
}
