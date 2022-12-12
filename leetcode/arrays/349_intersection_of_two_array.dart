class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    int len1 = nums1.length;
    nums1.addAll(nums2);
    Map result = {};
    List<int> common = [];
    for (int i = 0; i < nums1.length; i++) {
      if (nums1.length == 0) {
        return nums1;
      } else {
        if (i < len1 && result[nums1[i]] == null) {
          result[nums1[i]] = false;
        } else if (i > len1 - 1 && result[nums1[i]] != null) {
          result[nums1[i]] = true;
        }
      }
    }

    result.forEach((k, v) => v ? common.add(k) : null);
    return common;
  }
}

void main() {
  Solution s = Solution();
  print(
    s.intersection([1, 2, 2, 1], [2, 2]),
  );
}
