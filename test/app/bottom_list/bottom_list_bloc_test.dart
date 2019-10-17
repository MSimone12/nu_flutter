import 'package:flutter_test/flutter_test.dart';

import 'package:nu_flutter/app/bottom_list/bottom_list_bloc.dart';

void main() {
  BottomListBloc bloc;

  setUp(() {
    bloc = BottomListBloc();
  });

  group('BottomListBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<BottomListBloc>());
    });
  });
}
