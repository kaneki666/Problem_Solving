class Solution {
  int mostWordsFound(List<String> sentences) {
    int count = 0;
    for (final s in sentences) {
      int len = s.split(' ').length;
      if (len > count) {
        count = len;
      }
    }
    return count;
  }
}

void main() {
  Solution s = Solution();
  print(
    s.mostWordsFound([
      "alice and bob love leetcode",
      "i think so too",
      "this is great thanks very much"
    ]),
  );
}
