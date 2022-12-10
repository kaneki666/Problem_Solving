import 'dart:math';

class Solution {
  int maxProfit(List<int> prices) {
    int buyingIndex = 0;
    int sellingIndex = 0;
    int profit = 0;
    for (int i = 1; i < prices.length; i++) {
      if (prices[i] < prices[buyingIndex]) {
        buyingIndex = sellingIndex = i;
      } else if (prices[i] > prices[sellingIndex]) {
        sellingIndex = i;
      }
      profit = max(profit, prices[sellingIndex] - prices[buyingIndex]);
    }

    return profit;
  }
}

void main() {
  Solution s = Solution();
  print(
    s.maxProfit(
      [7, 1, 5, 3, 6, 4],
    ),
  );
}
