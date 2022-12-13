class Solution {
  int thirdMax(List<int> nums) {
    nums = nums.toSet().toList();
    nums.sort(((a, b) => b.compareTo(a)));
    print(nums);
    return nums.length > 2 ? nums[2] : nums[0];
  }
}

void main() {
  Solution s = Solution();
  print(
    s.thirdMax(
      [1, 2],
    ),
  );
}
