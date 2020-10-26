import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  LoginEvent();
  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class EmailChanged extends LoginEvent {
  final String email;
  EmailChanged(this.email);
  @override
  List<Object> get props => [email];
}

class PasswordChanged extends LoginEvent {
  final String password;
  PasswordChanged(this.password);
  @override
  List<Object> get props => [password];
}

class ValidateLoginEvent extends LoginEvent {
  final String email;
  final String password;
  ValidateLoginEvent(this.email, this.password);
  @override
  List<Object> get props => [email, password];
}
class FormSubmitt extends LoginEvent{}
