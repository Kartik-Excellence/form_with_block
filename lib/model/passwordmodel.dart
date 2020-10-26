import 'dart:io';

import 'package:formz/formz.dart';

class PasswordModel extends FormzInput<String, String> {
   const PasswordModel.pure() : super.pure('password Here');
   const PasswordModel.dirty(value) : super.dirty(value);
  static final RegExp regExp =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  @override
  validator(String value) {
    // TODO: implement validator
    if (regExp.hasMatch(value))
      return 'valid';
    else
      return 'INVALID';
  }
}
