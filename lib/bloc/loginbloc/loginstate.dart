import 'package:equatable/equatable.dart';
import 'package:form_with_bloc_equtable/model/emailmodel.dart';
import 'package:form_with_bloc_equtable/model/passwordmodel.dart';
import 'package:formz/formz.dart';

class LoginState extends Equatable {
  final EmailModel email;
  final PasswordModel password;
  final FormzStatus status;
  const LoginState({this.email=const EmailModel.pure(),
   this.password=const PasswordModel.pure(),
    this.status=FormzStatus.pure
    });
  LoginState copyWith(
      {EmailModel email, PasswordModel password, FormzStatus status}) {
    return LoginState(
        email: email ?? this.email, password: password ?? this.password, status: status ?? this.status);
  }

  @override
  // TODO: implement props
  List<Object> get props => [email, password, status];
}
