import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nu_flutter/app/logo/logo_widget.dart';
import 'home_animation.dart';
import 'package:nu_flutter/app/card/card_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin, HomeAnimation {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 20),
                  child: Center(
                      child: LogoWidget(
                    controller: controller,
                    animation: arrowAnimation,
                  ))),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    NuCard(
                      controller: controller,
                      animation: cardAnimation,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
