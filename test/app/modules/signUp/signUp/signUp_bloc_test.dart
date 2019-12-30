import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:seven_fit/app/modules/signUp/signUp/signUp_bloc.dart';
import 'package:seven_fit/app/modules/signUp/signUp/signUp_module.dart';

void main() {
  initModule(SignUpModule());
  SignUpBloc bloc;

  setUp(() {
    bloc = SignUpModule.to.bloc<SignUpBloc>();
  });

  group('SignUpBloc Test', () {
    test("First Test", () {
      expect(bloc, isInstanceOf<SignUpBloc>());
    });
  });
}
