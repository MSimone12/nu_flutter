import 'package:flutter_test/flutter_test.dart';

import 'package:nu_flutter/app/logo/logo_bloc.dart';

void main() {
  LogoBloc bloc;

  setUp(() {
    bloc = LogoBloc();
  });

  group('LogoBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<LogoBloc>());
    });
  });
}
