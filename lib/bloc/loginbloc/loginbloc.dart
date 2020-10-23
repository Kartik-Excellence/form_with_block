import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginevent.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginstate.dart';

String _email = '';
String _password = '';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState(_email, _password));

  @override
  void onTransition(
    Transition<LoginEvent,LoginState> transition
  ){
    super.onTransition(transition);
  }

  
  @override
  Stream<LoginState> mapEventToState(LoginEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
