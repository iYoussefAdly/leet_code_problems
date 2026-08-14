class Solution {
  bool isPalindrome(String s) {
    String cleanS = s.toLowerCase().replaceAll(RegExp(r'[^A-Za-z0-9]'), "");
    int low = 0;
    int high = cleanS.length - 1;
    while (low < high) {
      if (cleanS[low] != cleanS[high]) {
        return false;
      }
      low++;
      high--;
    }
    return true;
  }
}
