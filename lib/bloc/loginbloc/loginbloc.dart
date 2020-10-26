import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginevent.dart';
import 'package:form_with_bloc_equtable/bloc/loginbloc/loginstate.dart';
import 'package:form_with_bloc_equtable/model/emailmodel.dart';
import 'package:form_with_bloc_equtable/model/passwordmodel.dart';
import 'package:formz/formz.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState());

  @override
  void onTransition(Transition<LoginEvent, LoginState> transition) {
    print(transition.toString());
    super.onTransition(transition);
  }

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is EmailChanged) {
      final email = EmailModel.dirty(event.email);
      yield state.copyWith(
          email: email, status: Formz.validate([email]));
      // } else if (event is PasswordChanged) {
      //   final password = PasswordModel.dirty(event.password);
      //   yield state.copyWith(
      //       password: password, status: Formz.validate([state.email, password]));
      // }
    }
  }
}
