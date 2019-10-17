import 'package:flutter/material.dart';
import 'package:nu_flutter/app/button/button_widget.dart';

class Config extends StatefulWidget {
  final Animation<double> animation;
  Config({@required this.animation});

  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.animation,
      builder: (context, child) {
        return Opacity(
          opacity: widget.animation.value,
          child: child,
        );
      },
      child: Material(
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 100),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Image.network("https://i.imgur.com/hXgSlZn.png")),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text.rich(TextSpan(
                          style: TextStyle(
                              color: Colors.white, letterSpacing: 1, height: 2),
                          children: [
                            TextSpan(text: 'Banco '),
                            TextSpan(
                                text: '260 - Nu Pagamentos S/A\n',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Agência '),
                            TextSpan(
                                text: '0001\n',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: 'Conta '),
                            TextSpan(
                                text: '5690551-2\n',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ])),
                      SizedBox(height: 20),
                      Divider(height: 0),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(
                          Icons.help_outline,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Me ajuda',
                        ),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                      ),
                      Divider(
                        height: 0,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(Icons.person_outline),
                        title: Text(
                          'Perfil',
                        ),
                        trailing: Icon(Icons.chevron_right),
                      ),
                      Divider(
                        height: 0,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(
                          Icons.monetization_on,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Configurar NuConta",
                        ),
                        trailing: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      ),
                      Divider(height: 0),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(Icons.credit_card),
                        title: Text("Configurar Cartão",
                            style: TextStyle(color: Colors.white)),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      Divider(height: 0),
                      ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(Icons.phone_iphone),
                        title: Text("Configurações do app",
                            style: TextStyle(color: Colors.white)),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      Divider(height: 0),
                      SizedBox(height: 30),
                      ButtonWidget(
                        color: Colors.white,
                        text: "Sair da conta",
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
