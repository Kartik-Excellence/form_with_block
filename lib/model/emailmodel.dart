import 'package:formz/formz.dart';

class EmailModel extends FormzInput<String,String> {
  const EmailModel.pure() : super.pure('Email Here');
  const EmailModel.dirty(value) : super.dirty(value);
  final String email = '@gmail.com';

  @override
  validator(String value) {
    // TODO: implement validator
    if (value.contains(email))
      return null;
    else
      return 'invalid';
  }
}
