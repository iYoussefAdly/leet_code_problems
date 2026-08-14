class Solution {
  int maxProfit(List<int> prices) {
    int lowest = prices[0];
    int maxProfitValue = 0;
    for (int i = 1; i < prices.length; i++) {
      int profit = 0;
      if (prices[i] < lowest) {
        lowest = prices[i];
        continue;
      } else {
        profit = prices[i] - lowest;
        if (profit > maxProfitValue) {
          maxProfitValue = profit;
        }
      }
    }
    return maxProfitValue;
  }
}
