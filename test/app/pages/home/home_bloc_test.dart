import 'package:flutter_test/flutter_test.dart';

import 'package:nu_flutter/app/pages/home/home_bloc.dart';

void main() {
  HomeBloc bloc;

  setUp(() {
    bloc = HomeBloc();
  });

  group('HomeBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<HomeBloc>());
    });
  });
}
