import 'package:nu_flutter/app/button/button_bloc.dart';
import 'package:nu_flutter/app/bottom_list/bottom_list_bloc.dart';
import 'package:nu_flutter/app/config/config_bloc.dart';
import 'package:nu_flutter/app/default_card/default_card_bloc.dart';
import 'package:nu_flutter/app/card/card_bloc.dart';
import 'package:nu_flutter/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:nu_flutter/app/app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ButtonBloc()),
        Bloc((i) => BottomListBloc()),
        Bloc((i) => ConfigBloc()),
        Bloc((i) => DefaultCardBloc()),
        Bloc((i) => CardBloc()),
        Bloc((i) => AppBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
