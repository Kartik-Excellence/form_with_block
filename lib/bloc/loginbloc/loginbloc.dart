import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginevent.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginstate.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoadState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is EmailInput) {
      yield EmailState(event.email);
    }
  }
}
