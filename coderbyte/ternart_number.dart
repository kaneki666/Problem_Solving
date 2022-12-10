String k = '';
convertTernary(int number) {
  var x = number % 3;
  number = number ~/ 3;

  if (x < 0) {
    number += 1;
  }

  if (number != 0) {
    convertTernary(number);
  }
  k += x.toString();

  return k;
}

convert(decimal) {
  // If the number is greater
  // than 0, compute the
  // ternary representation
  // of the number
  if (decimal != 0) {
    return convertTernary(decimal);
  }
}

void main() {
  print(convertTernary(67));
}
