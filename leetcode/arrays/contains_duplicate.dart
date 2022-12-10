class Solution {
  bool containsDuplicate(List<int> nums) {
    bool hasDuplicate = false;
    Map x = {};
    for (int i = 0; i < nums.length; i++) {
      if (x[nums[i]] == null) {
        x[nums[i]] = 1;
      } else {
        hasDuplicate = true;
      }
    }
    return hasDuplicate;
  }
}

void main() {
  Solution s = Solution();
  print(
    s.containsDuplicate(
      [1, 2, 2, 1, 1, 2, 2],
    ),
  );
}
