class Solution {
  int singleNumber(List<int> nums) {
    Map<int, int> countNums = {};
    for (var number in nums) {
      if (countNums.containsKey(number)) {
        countNums[number] = countNums[number]! + 1;
      } else {
        countNums[number] = 1;
      }
    }
    int singleNumber = 0;
    for (var entery in countNums.entries) {
      if (entery.value == 1) {
        singleNumber = entery.key;
      }
    }
    return singleNumber;
  }
}