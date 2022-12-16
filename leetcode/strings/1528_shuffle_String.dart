class Solution {
  String restoreString(String s, List<int> indices) {
    List<String> arr = s.split('');
    List<String> result = List.generate(indices.length, (index) => '');
    for (int i = 0; i < indices.length; i++) {
      result[indices[i]] = arr[i];
    }

    return result.join();
  }
}

void main() {
  Solution s = Solution();
  print(
    s.restoreString("codeleet", [4, 5, 6, 7, 0, 2, 1, 3]),
  );
}
