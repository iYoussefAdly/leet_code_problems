void main() {
  Solution s = Solution();
  print(s.isPalindrome("A man, a plan, a canal: Panama"));
}

class Solution {
  bool isPalindrome(String s) {
    String lowerCaseString = s.toLowerCase();
    String finalCheckString =
        lowerCaseString.replaceAll(RegExp(r'[^a-zA-Z0-9]'), "");
    if (finalCheckString == finalCheckString.split("").reversed.join()) {
      return true;
    } else {
      return false;
    }
  }
}
