class Solution {
  int removeDuplicates(List<int> nums) {
    int len = nums.length;
    if (len == 1) {
      return 1;
    }
    final nonDup = nums.toSet().toList();
    for (int i = 0; i < nonDup.length; i++) {
      nums[i] = nonDup[i];
    }
    return nonDup.length;
  }
}

void main() {
  Solution s = Solution();

  print(s.removeDuplicates([1, 1, 2]));
}
