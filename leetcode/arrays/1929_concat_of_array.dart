class Solution {
  List<int> getConcatenation(List<int> nums) {
    return [...nums, ...nums];
  }
}

void main() {
  Solution s = Solution();
  print(s.getConcatenation([1, 3, 5, 6]));
}
