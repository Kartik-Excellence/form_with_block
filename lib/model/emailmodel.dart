import 'package:formz/formz.dart';

enum EmailValidator { invalid }

class EmailModel extends FormzInput<String, EmailValidator> {
  const EmailModel.pure() : super.pure('');
  const EmailModel.dirty({String value = ''}) : super.dirty(value);
  static final _emailRegex = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$');
  @override
  EmailValidator validator(String value) {
    // TODO: implement validator
    return _emailRegex.hasMatch(value) ? null : EmailValidator.invalid;
  }
}
