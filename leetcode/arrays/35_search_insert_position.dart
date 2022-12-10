class Solution {
  int searchInsert(List<int> nums, int target) {
    int searchIndex = nums.indexOf(target);
    if (searchIndex != -1) {
      return nums.indexOf(target);
    } else {
      int lessIndex = nums.lastIndexWhere((element) => element < target);
      nums.insert(lessIndex + 1, target);
      return lessIndex + 1;
    }
  }
}

void main() {
  Solution s = Solution();

  print(s.searchInsert([1, 3, 5, 6], 2));
}
