class Solution {
  int maxProfit(List<int> prices) {
    int maxProfit = 0;
    int lowest = prices[0];
    for (int i = 0; i < prices.length; i++) {
      int currentProfit = 0;
      if (prices[i] < lowest) {
        lowest = prices[i];
      } else {
        currentProfit = prices[i] - lowest;
        if (currentProfit > maxProfit) {
          maxProfit = currentProfit;
        }
      }
    }
    return maxProfit;
  }
}