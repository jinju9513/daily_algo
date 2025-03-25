class Solution {
  bool isPalindrome(String s) {
    String filtered = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
    String lower = filtered.toLowerCase();
    String reversed = lower.split('').reversed.join();
    return lower == reversed;
  }
}
