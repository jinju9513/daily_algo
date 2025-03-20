class Solution1 {
  int lengthOfLastWord(String s) {
    List<String> word = s.split(" ");
    //(공백제거도해야함)
    List<String> removeSpace = word.where((word)=> word.trim().isNotEmpty).toList();

    //마지막 단어 길이
    int lastWord = removeSpace[removeSpace.length - 1].length;
    return lastWord;
  }
}

class Solution2 {
  int lengthOfLastWord(String s) {
	  // trim() -> 앞 뒤의 공백 제거(제거된 새 문자열 반환)
	  // split(String seperator) -> 문자열에서 seperator를 기준으로 분리한다. 배열이 반환됨
    var splitString = s.trim().split(' ');
    // hello world -> ["hello", "world"]
    
    // List.first (List[0]) or List.last( => List[List.length - 1])

    return splitString.last.length;
  }
}

class Solution3 {
  int lengthOfLastWord(String s) {
    String res = "";
    
    for (var i = s.length-1; i >=0; i--) {
      if(s[i]== " " && res.isNotEmpty) return res.length; 
      
      if(s[i] == " ") {
        continue;
      }
      res+= s[i];
    }

    return res.length;
  }
}

// s = " hello world "
// i = 6 / s[i] = " "
// res = "dlrow"
// res.length = 5
