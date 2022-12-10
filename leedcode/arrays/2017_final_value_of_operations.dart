class Solution {
  int finalValueAfterOperations(List<String> operations) {
    int x = 0;
    for (int i = 0; i < operations.length; i++) {
      if (operations[i] == "--X" || operations[i] == "X--") {
        x--;
      } else {
        x++;
      }
    }
    return x;
  }
}

void main() {
  Solution s = Solution();

  print(s.finalValueAfterOperations(["--X", "X++", "X++"]));
}
