import 'package:equatable/equatable.dart';

class LoginState extends Equatable {
  String email;
  String password;
  LoginState(this.email, this.password);
  @override
  // TODO: implement props
  List<Object> get props => [email, password];

  @override
  bool get stringify => true;
}
