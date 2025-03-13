class Solution {
  String longestCommonPrefix(List<String> strs) {
    if(strs.isEmpty){ //배열이 비어있을때 예외처리
        return "";
    }

    String prefix = strs[0]; //첫번째 문자열을 기준으로
    for(int i =1; i<strs.length; i++){ // 두번째 문자열 부터 마지막까지 하나씩 비교
        while(!strs[i].startsWith(prefix)){ //현재 문자열 prefix으로 시작하지 않으면 while문 실행
        prefix = prefix.substring(0,prefix.length-1); //한글자씩 줄이기
        if(prefix.isEmpty)return ""; //공통 접두사 없으면 종료

        }
    }
    return prefix;
  }
}