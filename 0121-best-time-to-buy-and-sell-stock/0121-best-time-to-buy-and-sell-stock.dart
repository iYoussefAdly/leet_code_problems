class Solution {
  int maxProfit(List<int> prices) {
    int lowest = prices[0];
    int maxProfit = 0;
    for (int i = 1; i < prices.length; i++) {
      var currentProfit = 0;
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
