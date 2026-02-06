class Solution {
  bool containsDuplicate(List<int> nums) {
    Map<int, int> countNums = {};
    for (var number in nums) {
      if (countNums.containsKey(number)) {
        return true;
      } else {
        countNums[number] = 1;
      }
    }
    return false;
  }
}