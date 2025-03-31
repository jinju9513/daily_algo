class Solution {
  bool isIsomorphic(String s, String t) {
    // 두 개의 맵(또는 배열)을 사용하여:
    Map<String, String> mapSt = {};
    Map<String, String> mapTs = {};
    //   1. `s`의 각 문자가 `t`의 특정 문자로 매핑되었는지 기록.
    // 2. `t`의 각 문자가 이미 `s`의 특정 문자에 매핑되었는지 확인.

    for (int i = 0; i < s.length; i++) {
      String charS = s[i];
      String charT = t[i];

      if (mapSt.containsKey(charS) && mapSt[charS] != charT) {
        return false;
      } else {
        mapSt[charS] = charT;
      }

      if (mapTs.containsKey(charT) && mapTs[charT] != charS) {
        return false;
      } else {
        mapTs[charT] = charS;
      }
    }
    return true;
  }
}
