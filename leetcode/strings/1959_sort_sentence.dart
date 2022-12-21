class Solution {
  String sortSentence(String msg) {
    List<String> array = msg.split(' ');
    List<String> res = List.generate(array.length, (index) => 'e');
    for (int t = 0; t < array.length; t++) {}
    return '';
  }
}

void main() {
  Solution s = Solution();
  print(
    s.sortSentence(
      "is2 sentence4 This1 a3",
    ),
  );
}
