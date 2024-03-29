class FieldValidator {
  String? nameValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your name";
    }
    return null;
  }

  String? bankNameValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter bank name";
    }
    return null;
  }

  String? accountNumber(String? value) {
    if (value!.length < 10) {
      return "Please enter correct account number";
    }
    return null;
  }

  String? ifscNumber(String? value) {
    if (value!.length != 11) {
      return "Please enter correct account number";
    }
    return null;
  }

  String? nationalityValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your nationality";
    }
    return null;
  }

  String? houseValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your House no.";
    }
    return null;
  }

  String? areaValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your Road Name / Area / Colony ";
    }
    return null;
  }

  String? cityValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter your City ";
    }
    return null;
  }

  String? usernameValidator(String? value) {
    if (value!.isEmpty) {
      return "Please provide an unique username";
    }
    if (value.length < 3) {
      return "Username is too short";
    }
    return null;
  }

  String? emailValidator(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (value!.isEmpty) {
      return "Please enter a username";
    }
    //else if (!regex.hasMatch(value)) {
    //   return 'Email format is invalid';
    // }
    return null;
  }

  String? panValidator(String? value) {
    if (!RegExp(r'^[A-Za-z]{5}[0-9]{4}[A-Za-z]{1}$').hasMatch(value!)) {
      return 'Please enter valid pan';
    } else {
      return null;
    }
  }

  String? aadhaarValidator(String? value) {
    if (!RegExp(r'^[01]\d{3}[\s-]?\d{4}[\s-]?\d{4}$').hasMatch(value!)) {
      return 'Please enter valid aadhaar number';
    } else {
      return null;
    }
  }

  String? phoneValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter a phone number";
    }
    if (value.length != 10) {
      return "Phone number is invalid";
    }
    return null;
  }

  String? pinValidator(String? value) {
    if (value!.length != 6) {
      return "Pin Code is invalid";
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value!.isEmpty) {
      return "Please enter a password";
    } else if (value.length < 8) {
      return 'Minimum 8 characters';
    } else if (value.length > 16) {
      return 'Maximum 16 characters';
    }
    return null;
  }

  String? countryValidator(String? value) {
    if (value!.isEmpty) {
      return "Select your country";
    }
    return null;
  }

  String? stateValidator(String? value) {
    if (value!.isEmpty) {
      return "Select your State";
    }
    return null;
  }

  String? commentsValidator(String? value) {
    if (value!.isEmpty) {
      return "Comment is empty!";
    }
    if (value.length < 5) {
      return "Comment is too short!";
    }
    return null;
  }

  String? genderValidator(String? value) {
    if (value!.isEmpty) {
      return "Gender is required";
    }
    return null;
  }

  String? dobValidator(String? value) {
    if (value!.isEmpty) {
      return "Date if Birth is required";
    }
    return null;
  }
}
