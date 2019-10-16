import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:nu_flutter/app/logo/logo_widget.dart';
import 'home_animation.dart';

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
                  child: GestureDetector(
                    child: LogoWidget(),
                    behavior: HitTestBehavior.translucent,
                    onTap: () => toggleAnimation(),
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  children: <Widget>[
                    AnimatedBuilder(
                      animation: cardAnimation,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, cardAnimation.value),
                          child: child,
                        );
                      },
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onVerticalDragUpdate: (details) {
                          controller.value += details.primaryDelta /
                              MediaQuery.of(context).size.height *
                              1.5;
                        },
                        onVerticalDragEnd: (details) {
                          if (controller.value > 0.2)
                            controller.forward();
                          else
                            controller.reverse();
                        },
                        child: Transform.translate(
                          offset: Offset(0, cardAnimation.value),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: Card(
                              elevation: 5,
                              color: Colors.white,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.attach_money, size: 20),
                                            Text(
                                              'NuConta',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300),
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
                                        left: 16,
                                        right: 16,
                                        top: 50,
                                        bottom: 70),
                                    child: Row(
                                      children: <Widget>[
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              'Saldo disponível',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            Text(
                                              'R\$ 1.000,00',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Color.fromARGB(255, 235, 235, 235),
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.payment,
                                                  color: Colors.black26,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'Pagamento efetuado de R\$ 2.500,00 \nontem',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black87),
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
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
