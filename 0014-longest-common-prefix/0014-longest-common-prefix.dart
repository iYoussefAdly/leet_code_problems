class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return "";

    // Start with the first string as the prefix
    String prefix = strs[0];

    for (int i = 1; i < strs.length; i++) {
      // Compare prefix with each string
      while (!strs[i].startsWith(prefix)) {
        // Shorten the prefix until it matches
        prefix = prefix.substring(0, prefix.length - 1);
        if (prefix.isEmpty) return "";
      }
    }

    return prefix;
  }
}
