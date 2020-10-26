import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginbloc.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginstate.dart';
import 'package:form_with_bloc_equtable/loginscreen.dart';

void main(List<String> args) {
    EquatableConfig.stringify=kDebugMode;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Flutter Bloc')),
          body: BlocProvider<LoginBloc>(
            create: (_) => LoginBloc(),
            child: LoginValidator(),
            )
          ),
    );
  }
}
