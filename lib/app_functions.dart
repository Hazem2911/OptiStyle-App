// Validators
String? validateCardNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your card number';
  }
  return null;
}

String? validateExpiryDate(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter expiry date';
  }
  return null;
}

String? validateCVV(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter CVV';
  }
  return null;
}

String? validateCardHolderName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Please enter card holder name';
  }
  return null;
}
