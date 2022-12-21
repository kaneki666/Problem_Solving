class Solution {
  int romanToInt(String s) {
    Map<String, int> romanNumerals = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000
    };
    List<String> arrS = s.split('');
    int result = 0;

    for (int x = 0; x < arrS.length; x++) {
      if (romanNumerals[arrS[x]] != null) {
        if (x < arrS.length - 1 &&
            (arrS[x] == "I" || arrS[x] == "X" || arrS[x] == "C")) {
          if (romanNumerals[arrS[x + 1]]! > romanNumerals[arrS[x]]!) {
            result = result +
                (romanNumerals[arrS[x + 1]]! - romanNumerals[arrS[x]]!);
            x++;
            continue;
          }
        } else {}
      }
      result += romanNumerals[arrS[x]]!;
    }

    return result;
  }
}

void main() {
  Solution s = Solution();
  print(
    s.romanToInt(
      "MCMXCIV",
    ),
  );
}
