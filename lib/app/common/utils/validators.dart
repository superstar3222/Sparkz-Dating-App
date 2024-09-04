import 'package:dating_app/app/common/common.dart';

class Validators {
  Validators._();
  static String? passwordValidator({String? value, int minimumLength = 6}) {
    if (value == "") {
      return null;
    } else if (value != null && value.length < minimumLength) {
      return "Password should have min $minimumLength characters";
    } else if (value != null &&
        !value.contains(RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%&\><*~])'))) {
      return "Password must be 6 digits and must contain an uppercase letter \n and at least a number and a special character.";
    }
    return null;
  }

  static String? emailValidator({
    String? value,
  }) {
    String emailPattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp emailRegExp = RegExp(emailPattern);
    if (value == null || value.isEmpty) {
      return null;
    } else if (!emailRegExp.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? firstNameValidator({String? value}) {
    if (value == "") {
      return null;
    } else if (value!.length < 3) {
      return "First name should be at least 3 characters long";
    }
    return null;
  }

  static String? lastNameValidator({String? value}) {
    if (value == "") {
      return null;
    } else if (value!.length < 3) {
      return "Last name should be at least 3 characters long";
    }
    return null;
  }
}

class Validator {
  List<Function(String)> validators = [];

  Validator isEmail() {
    validators.add((String value) {
      if (!value.isEmail) {
        return 'Invalid email';
      }
      return null;
    });
    return this;
  }

  Validator isPassword() {
    validators.add((String value) {
      if (!value.isPassword) {
        return 'Password must be at least 8 characters and contain at least one letter and one number';
      }
      return null;
    });
    return this;
  }

  Validator isFirstName() {
    validators.add((String value) {
      if (!value.isName) {
        return 'first name must be at least 5 characters';
      } else if (value.isEmpty) {
        return 'first name cannot be empty';
      }
      return null;
    });
    return this;
  }

  Validator isLastName() {
    validators.add((String value) {
      if (!value.isName) {
        return 'last name must be at least 5 characters';
      } else if (value.isEmpty) {
        return 'last name cannot be empty';
      }
    });
    return this;
  }

  Validator isNotEmpty() {
    validators.add((String value) {
      if (value.isEmpty) {
        return 'This field is required';
      }
      return null;
    });
    return this;
  }

  Validator lengthGreaterThan(int length) {
    validators.add((value) {
      if (value.length < length) {
        return 'This field must be at least $length characters';
      }
      return null;
    });
    return this;
  }

  String? validate(String? value) {
    for (final validator in validators) {
      final error = validator(value ?? '');
      if (error != null) {
        return error;
      }
    }
    return null;
  }
}
