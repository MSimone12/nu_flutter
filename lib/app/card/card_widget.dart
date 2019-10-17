import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../default_card/default_card_widget.dart';

class NuCard extends StatefulWidget {
  final AnimationController controller;
  final Animation<double> animation;

  NuCard({@required this.controller, @required this.animation});

  @override
  _NuCardState createState() => _NuCardState();
}

class _NuCardState extends State<NuCard> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, widget.animation.value),
          child: child,
        );
      },
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onVerticalDragUpdate: (details) {
          widget.controller.value +=
              details.primaryDelta / MediaQuery.of(context).size.height * 1.5;
        },
        onVerticalDragEnd: (details) {
          if (widget.controller.value > 0.2)
            widget.controller.forward();
          else
            widget.controller.reverse();
        },
        child: Align(
          alignment: Alignment.topCenter,
          child: DefaultCard(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.attach_money, size: 20),
                          Text(
                            'NuConta',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                      Icon(
                        CupertinoIcons.eye,
                        size: 30,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 50, bottom: 70),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Saldo disponível',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          Text(
                            'R\$ 1.000,00',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 235, 235, 235),
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(3))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.payment,
                                color: Colors.black26,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Pagamento efetuado de R\$ 2.500,00 \nontem',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.black87),
                                ),
                              )
                            ],
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.black26,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
