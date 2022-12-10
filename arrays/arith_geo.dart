// have the function ArithGeo(arr) take the array of    *
// *  numbers stored in arr and return the string "Arithmetic" if the sequence follows    *
// *  an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If   *
// *  the sequence doesn't follow either pattern return -1. An arithmetic sequence is     *
// *  one where the difference between each of the numbers is consistent, where as in a   *
// *  geometric sequence, each term after the first is multiplied by some constant or     *
// *  common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric                        *
// *  example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not  *
// *  be entered, and no array will contain all the same elements.
//
//
String arithGeo(List<int> arr) {
  String seq = '-1';
  bool arithmetic = true;
  bool geometric = true;
  int diffArith = arr[1] - arr[0];
  double diffGeo = arr[1] / arr[0];

  for (int i = 2; i < arr.length; i++) {
    if (arr[i] - arr[i - 1] != diffArith) {
      arithmetic = false;
    }
  }
  if (arithmetic) {
    seq = "Arithmetic";
  } else {
    for (int i = 2; i < arr.length; i++) {
      if (arr[i] / arr[i - 1] != diffGeo) {
        geometric = false;
      }
      if (geometric) {
        seq = "Geometric";
      } else {
        seq = "-1";
      }
    }
  }
  return seq;
}

void main(List<String> args) {
  print(arithGeo([2, 6, 18, 54]));
}
