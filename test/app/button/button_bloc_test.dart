import 'package:flutter_test/flutter_test.dart';

import 'package:nu_flutter/app/button/button_bloc.dart';

void main() {
  ButtonBloc bloc;

  setUp(() {
    bloc = ButtonBloc();
  });

  group('ButtonBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<ButtonBloc>());
    });
  });
}
