class Solution {
  int removeElement(List<int> nums, int val) {
    List<int> newArr = nums.where((element) => element != val).toList();
    for (int i = 0; i < newArr.length; i++) {
      nums[i] = newArr[i];
    }
    return newArr.length;
  }
}

void main() {
  Solution s = Solution();

  print(s.removeElement([0, 1, 2, 2, 3, 0, 4, 2], 2));
}
