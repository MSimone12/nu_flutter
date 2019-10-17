import 'package:flutter_test/flutter_test.dart';

import 'package:nu_flutter/app/default_card/default_card_bloc.dart';

void main() {
  DefaultCardBloc bloc;

  setUp(() {
    bloc = DefaultCardBloc();
  });

  group('DefaultCardBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<DefaultCardBloc>());
    });
  });
}
