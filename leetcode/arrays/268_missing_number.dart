class Solution {
  int missingNumber(List<int> nums) {
    int len = nums.length;
    List<int> newArr = List.generate(len + 1, (int i) => i);
    newArr.removeWhere((element) => nums.contains(element));
    return newArr[0];
  }

  int missingNumberSum(List<int> nums) {
    int len = nums.length;
    int allSum = ((len) * (len + 1) ~/ 2);
    int sum = 0;
    for (int i = 0; i < len; i++) {
      sum += nums[i];
    }

    return allSum - sum;
  }
}

void main() {
  Solution s = Solution();
  print(
    s.missingNumberSum(
      [9, 6, 4, 2, 3, 5, 7, 0, 1],
    ),
  );
}
