class Solution {
  void reverseString(List<String> s) {
    int firtIndex = 0;
    int lastIndex = s.length - 1;
    while (firtIndex < lastIndex) {
      String temp = "";
      temp = s[firtIndex];
      s[firtIndex] = s[lastIndex];
      s[lastIndex] = temp;
      firtIndex++;
      lastIndex--;
    }

  }
}