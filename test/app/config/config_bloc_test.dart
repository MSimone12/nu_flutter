import 'package:flutter_test/flutter_test.dart';

import 'package:nu_flutter/app/config/config_bloc.dart';

void main() {
  ConfigBloc bloc;

  setUp(() {
    bloc = ConfigBloc();
  });

  group('ConfigBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<ConfigBloc>());
    });
  });
}
