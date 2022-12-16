class Solution {
  int numJewelsInStones(String jewels, String stones) {
    int count = 0;
    for (int i = 0; i < jewels.length; i++) {
      for (int j = 0; j < stones.length; j++) {
        if (jewels[i] == stones[j]) {
          count++;
        }
      }
    }
    return count;
  }
}

void main() {
  Solution s = Solution();
  print(
    s.numJewelsInStones("aA", "aAAbbbb"),
  );
}
