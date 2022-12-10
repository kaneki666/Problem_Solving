class Solution {
  int majorityElement(List<int> nums) {
    Map values = {};
    for (int x = 0; x < nums.length; x++) {
      if (values[nums[x]] == null) {
        values[nums[x]] = 1;
      } else {
        values[nums[x]] += 1;
      }
    }
    int val = 0;
    int major = 0;
    values.forEach((key, value) {
      if (value > val) {
        val = value;
        major = key;
      }
    });

    return major;
  }
}

void main() {
  Solution s = Solution();
  print(
    s.majorityElement(
      [1, 2, 2, 1, 1, 2, 2],
    ),
  );
}
