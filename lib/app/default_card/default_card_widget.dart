import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../pages/home/home_animation.dart';

class DefaultCard extends StatefulWidget {
  final Widget child;

  DefaultCard({this.child});

  @override
  _DefaultCardState createState() => _DefaultCardState();
}

class _DefaultCardState extends State<DefaultCard>
    with TickerProviderStateMixin, HomeAnimation {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Card(elevation: 5, color: Colors.white, child: widget.child),
    );
  }
}
