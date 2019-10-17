import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoWidget extends StatefulWidget {
  final AnimationController controller;
  final Animation animation;
  LogoWidget({@required this.animation, @required this.controller});

  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (widget.controller.value > 0) {
            widget.controller.reverse();
          } else {
            widget.controller.forward();
          }
        });
      },
      child: Column(
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
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          AnimatedBuilder(
            animation: widget.animation,
            builder: (context, child) {
              return Transform(
                origin: Offset(0, pi * 3),
                transform: Matrix4.rotationX(widget.animation.value),
                child: child,
              );
            },
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
