class Solution {
  List<int> moveZeroes(List<int> nums) {
    int lastIndex = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        nums[lastIndex] = nums[i];
        lastIndex++;
      }
    }
    for (int i = lastIndex; i < nums.length; i++) {
      nums[i] = 0;
    }
    return nums;
  }
}

void main() {
  Solution s = Solution();
  print(
    s.moveZeroes(
      [0, 1, 0, 3, 12],
    ),
  );
}
