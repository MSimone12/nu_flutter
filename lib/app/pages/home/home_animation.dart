import 'dart:math';

import 'package:flutter/widgets.dart';

mixin HomeAnimation<T extends StatefulWidget>
    on State<T>, TickerProviderStateMixin<T> {
  AnimationController controller;
  Animation<double> configOpacityAnimation;
  Animation<double> listOpacityAnimation;
  Animation<double> cardAnimation;
  Animation<double> arrowAnimation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
    );

    configOpacityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(controller);

    listOpacityAnimation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(controller);

    cardAnimation = Tween<double>(
      begin: 0,
      end: MediaQuery.of(context).size.height * 0.6,
    ).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
        reverseCurve: Curves.easeOut));

    arrowAnimation = Tween<double>(begin: 0, end: pi).animate(CurvedAnimation(
        parent: controller,
        curve: Curves.easeIn,
        reverseCurve: Curves.easeOut));
  }

  void toggleAnimation() {
    if (controller.value > 0)
      controller.reverse();
    else
      controller.forward();
  }
}
