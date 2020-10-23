import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginbloc.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginevent.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginstate.dart';

class LoginValidator extends StatelessWidget {
  var emailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _loginBloc = BlocProvider.of<LoginBloc>(context);
    _onButtonPressed() {
      _loginBloc.add(EmailInput(emailController.text));
    }

    return Column(
      children: [
        TextFormField(
          controller: emailController,
          validator: (value) {
            if (value.isEmpty) {
              return 'Enter text';
            } else
              return null;
          },
        )
      ],
    );
  }
}
