String recursiveFunc(updatedArray, updatedSum) {
  if (updatedArray.length == 1) {
    if (updatedSum + updatedArray[0] == 0) {
      return '+';
    } else if (updatedSum - updatedArray[0] == 0) {
      return '-';
    } else {
      return 'not possible';
    }
  }

  String stringMinus = recursiveFunc(
      updatedArray.skip(1).toList(), updatedSum - updatedArray[0]);

  if (stringMinus != 'not possible') {
    return '-' + stringMinus;
  }

  String stringPlus = recursiveFunc(
      updatedArray.skip(1).toList(), updatedSum + updatedArray[0]);

  if (stringPlus != 'not possible') {
    return '+' + stringPlus;
  }
  return "not possible";
}

String plusMinus(int number) {
  List<int?> arryNum =
      number.toString().split('').map((e) => int.tryParse(e)).toList();

  if (arryNum.length < 2) {
    return "not possible";
  }

  return recursiveFunc(arryNum.skip(1).toList(), arryNum[0]);
}

void main(List<String> args) {
  print(plusMinus(26712));
}
