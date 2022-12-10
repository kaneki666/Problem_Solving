bool containCapitalLetter(String str) {
  return RegExp('[A-Z]').hasMatch(str);
}

bool containDigit(String str) {
  return RegExp(r'.*[0-9].*').hasMatch(str);
}

bool containSpecial(String str) {
  return RegExp(r'\S*[^\w\s]\S*').hasMatch(str);
}

bool isPasswordString(String str) {
  return str.toLowerCase() == 'password' ? false : true;
}

bool correctleN(String str) {
  return str.length >= 8 && str.length <= 30;
}

bool simplePassword(String str) {
  bool valid = correctleN(str);
  valid = valid && containCapitalLetter(str);
  valid = valid && containDigit(str);
  valid = valid && containSpecial(str);
  valid = valid && isPasswordString(str);
  return valid;
}

void main() {
  print(containCapitalLetter("f`"));
}
