import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginbloc.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginevent.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginstate.dart';
import 'package:formz/formz.dart';

//final _loginKey = GlobalKey<FormState>();

class LoginValidator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = new TextEditingController();
    TextEditingController _passwordController = new TextEditingController();

    final emailField = TextFormField(
      controller: _emailController,
      obscureText: false,
      decoration: InputDecoration(hintText: 'Email'),
      onChanged: (value) {
        context.bloc<LoginBloc>().add(EmailChanged(value));
      },
    );

    final passwordField =
        BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return TextFormField(
        controller: _passwordController,
        obscureText: false,
        decoration: InputDecoration(hintText: 'Password'),
          onChanged: (value) {
            context.bloc<LoginBloc>().add(PasswordChanged(value));
          },
      );
    });

    final submittButton = BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return RaisedButton(
          onPressed: state.status.isValidated
              ? () => context.bloc<LoginBloc>().add(FormSubmitt())
              : null,
          child: const Text('Submit'),
        );
      },
    );

    return BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.status.isSubmissionSuccess) {
            Scaffold.of(context).hideCurrentSnackBar();
            showDialog<void>(
                context: context,
                builder: (_) {
                  return Dialog(
                    child: Text('Success'),
                  );
                });
          } else if (state.status.isSubmissionInProgress) {
            Scaffold.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text('Validating'),
              ));
          }
        },
        child: Column(
          children: [
            emailField,
            passwordField,
            submittButton
          ],
        ));
  }
}
