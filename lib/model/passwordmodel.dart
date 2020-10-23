import 'package:formz/formz.dart';

enum PasswordValidator { invalid }

class PasswordModel extends FormzInput<String, PasswordValidator> {
  PasswordModel.pure() : super.pure('');
  PasswordModel.dirty(String value) : super.dirty(value);
  final _passwordRegex = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$');

  @override
  PasswordValidator validator(String value) {
    // TODO: implement validator
    return _passwordRegex.hasMatch(value) ? null : PasswordValidator.invalid;
  }
}
