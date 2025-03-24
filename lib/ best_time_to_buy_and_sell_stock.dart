class Solution {
  int maxProfit(List<int> prices) {
    int min =prices[0];
    int result = 0;
    for(int i = 0; i < prices.length; i++){
    //if(prices[i]< min){
    // min = prices[i];
    //result = (prices[i] - min) > result ? prices[i]-min : result;
    //}
    min = prices[i] < min ? prices[i] : min;
    result = (prices[i] - min) > result ? prices[i]-min : result;
  }
  return result;
  }
}