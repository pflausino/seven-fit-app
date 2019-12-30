import 'package:seven_fit/app/modules/signUp/signUp/signUp_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:seven_fit/app/modules/signUp/signUp/signUp_page.dart';

class SignUpModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => SignUpBloc()),
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => SignUpPage();

  static Inject get to => Inject<SignUpModule>.of();
}
