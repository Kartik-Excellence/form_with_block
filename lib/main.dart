import 'package:flutter/material.dart';
import 'package:form_with_bloc_equtable/loginvalidator.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Flutter Bloc')),
          body: LoginValidator()
          ),
    );
  }
}
