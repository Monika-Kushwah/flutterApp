import 'package:get/get_utils/src/extensions/internacionalization.dart';

class Validator {

  static String validatePassword(String value) {
    if (value=="" || value==null) {
      return 'onLoginEnterPassword'.tr;
    }
    else if (value.length <= 5) {
      return 'onLoginPasswordMustBe8Char'.tr;
    }
    return null;
  }

  static  String ValidateEmail(String value) {
    Pattern pattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regex = RegExp(pattern);
    if (value.isEmpty) {
      return 'Email ID is Required';
    } else if (!regex.hasMatch(value)) {
      return 'Enter a valid Email ID';
    } else {
      return null;
    }
  }

}
