class Solution {
  List<int?> plusOne(List<int> digits) {
    BigInt number = BigInt.parse(digits.join(""));
    print(digits.length);
    number = number + BigInt.one;
    List<String> y = number.toString().split("");

    return y.map((e) => int.tryParse(e)).toList();
  }
}

void main() {
  Solution s = Solution();
  print(
      s.plusOne([7, 2, 8, 5, 0, 9, 1, 2, 9, 5, 3, 6, 6, 7, 3, 2, 8, 4, 3, 7]));
}
