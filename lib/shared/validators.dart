class Validators {
  String? validateEmail(String? email) {
    if (email!.isEmpty) {
      return 'Email is required';
    }
    if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == null) {
      return 'Password is required';
    }
    if (password.isEmpty) {
      return 'Password is required';
    }
    // check if password is at least 8 latin characters long, has at least one lowercase letter, one uppercase letter, one number and one special character
    if (password.length < 8 ||
        !password.contains(RegExp(r'[a-z]')) ||
        !password.contains(RegExp(r'[A-Z]')) ||
        !password.contains(RegExp(r'[0-9]')) ||
        !password.contains(RegExp(r'[!@#\$%\^&\*]'))) {
      return 'Password must be at least 8 latin characters long, contain at least one lowercase letter, one uppercase letter, one number and one special character';
    }
    return null;
  }

  String? validateConfirmPassword(String? value, String? password) {
    if (value!.isEmpty) {
      return 'Confirm password is required';
    }
    validatePassword(value);
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  String? validateStreetAddress(String? value) {
    if (value == null) return 'Address is required';
    if (value.isEmpty) return 'Address is required';
    return null;
  }

  String? validatePostalCode(String? value) {
    if (value == null) return 'Postcode is required';
    if (value.isEmpty) return 'Postcode is required';
    // check if postal code is 5 numeric characters long
    if (!RegExp(r'^[0-9]{5}$').hasMatch(value)) {
      return 'Postal code must be 5 digits long';
    }
    return null;
  }

  String? validateCity(String? value) {
    if (value == null) return 'City is required';
    if (value.isEmpty) return 'City is required';
    if (!RegExp(r'^[a-zA-Z ]+$').hasMatch(value)) {
      return 'City must be alphabetic';
    }
    if (value.length < 2) {
      return 'City must be at least 2 characters long';
    }
    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value == null) return 'Phone number is required';
    if (value.isEmpty) return 'Phone number is required';
    if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
      return 'Phone number must be 10 digits long';
    }
    return null;
  }

  String? validateFirstName(String? value) {
    if (value == null) return 'First name is required';
    if (value.isEmpty) return 'First name is required';
    if (value.length < 2) {
      return 'First name must be at least 2 characters long';
    }
    return null;
  }

  String? validateLastName(String? value) {
    if (value == null) return 'Last name is required';
    if (value.isEmpty) return 'Last name is required';
    if (value.length < 2) return 'Last name must be at least 2 characters long';
    return null;
  }

  // check photo url
  String? validatePhotoUrl(String? value) {
    if (value == null) return 'Photo url is required';
    if (value.isEmpty) return 'Photo url is required';
    if (!RegExp(r'^https?:\/\/.*\.(?:png|jpg|jpeg|gif)$').hasMatch(value)) {
      return 'Photo url must be a valid url';
    }
    return null;
  }

  // check sar value
  String? validateSar(String? value) {
    if (value == null) return 'SAR is required';
    if (value.isEmpty) return 'SAR is required';
    if (!(double.parse(value) > 0)) {
      // must be double
      if (!RegExp(r'^[0-9]+(\.[0-9]{1,2})?$').hasMatch(value)) {
        return 'SAR must be a positive float number';
      }
      return 'SAR must be a positive float number';
    }
    return null;
  }

  // check ram value
  String? validateRam(String? value) {
    if (value == null) return 'RAM is required';
    if (value.isEmpty) return 'RAM is required';
    // must be integer
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'RAM must be an integer';
    }
    // must be positive value
    if (!(int.parse(value) > 0)) {
      return 'RAM must be a positive number';
    }
    return null;
  }

  // check price value
  String? validatePrice(String? value) {
    if (value == null) return 'Price is required';
    if (value.isEmpty) return 'Price is required';
    // must be double
    if (!RegExp(r'^[0-9]+(\.[0-9]{1,2})?$').hasMatch(value)) {
      return 'Price must be a double number';
    }
    // must be positive value
    if (!(double.parse(value) > 0)) {
      return 'Price must be a positive float number';
    }
    return null;
  }

  // check model value
  String? validateModel(String? value) {
    if (value == null) return 'Model is required';
    if (value.isEmpty) return 'Model is required';
    if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(value)) {
      return 'Model must be alphanumeric';
    }
    if (value.length < 2) {
      return 'Model must be at least 2 characters long';
    }
    return null;
  }

  // check quantity value
  String? validateQuantity(String? value) {
    if (value == null) return 'Quantity is required';
    if (value.isEmpty) return 'Quantity is required';
    // must be type integer
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Quantity must be an integer';
    }
    // must be positive value
    if (!(int.parse(value) > 0)) {
      return 'Quantity must be a positive number';
    }
    return null;
  }

  // check storage value
  String? validateStorage(String? value) {
    if (value == null) return 'Storage is required';
    if (value.isEmpty) return 'Storage is required';
    // must have the following format: "1 TB" or "64 GB" or "256 GB"
    if (!RegExp(r'^[0-9]{1,3} [Tt][Bb]$').hasMatch(value) &&
        !RegExp(r'^[0-9]{1,3} [Gg][Bb]$').hasMatch(value)) {
      return 'Storage must be in the following format: "1 TB" or "64 GB" or "256 GB"';
    }
    return null;
  }

  // check soc value
  String? validateSoc(String? value) {
    if (value == null) return 'SOC is required';
    if (value.isEmpty) return 'SOC is required';
    if (!RegExp(r'^[a-zA-Z0-9 ]+$').hasMatch(value)) {
      return 'Model must be alphanumeric';
    }
    if (value.length < 2) {
      return 'Model must be at least 2 characters long';
    }
    return null;
  }

  // check battery value
  String? validateBattery(String? value) {
    if (value == null) return 'Battery is required';
    if (value.isEmpty) return 'Battery is required';
    // check if is integer
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Battery must be an integer number';
    }
    // must be positive value
    if (!(int.parse(value) > 0)) {
      return 'Battery must be a positive integer number';
    }
    return null;
  }

  // check camera value
  String? validateCamera(String? value) {
    if (value == null) return 'Camera is required';
    if (value.isEmpty) return 'Camera is required';
    return null;
  }

  // check screen size
  String? validateScreenSize(String? value) {
    if (value == null) return 'Screen size is required';
    if (value.isEmpty) return 'Screen size is required';
    // must be double
    if (!RegExp(r'^[0-9]+(\.[0-9]{1,2})?$').hasMatch(value)) {
      return 'Screen size must be a double number';
    }
    // must be positive value
    if (!(double.parse(value) > 0)) {
      return 'Screen size must be a positive float number';
    }
    return null;
  }
}
