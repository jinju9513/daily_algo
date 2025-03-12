class Solution {
  int romanToInt(String s) {
    Map<String, int> roman = {
        'I' : 1,
        'V' : 5,
        'X' : 10,
        'L' : 50,
        'C' : 100,
        'D' : 500,
        'M' : 1000
    };

    int total =0;

    for(int i=0; i < s.length; i++){// 왼쪽에서 오른쪽으로 
        int value = roman[s[i]]!; //현재값
        int next = (i + 1 < s.length) ? roman[s[i+1]]! : 0;// 다음문자 확인

        if(value < next){
            total -= value;
        }else{
            total += value;
        }
    }
    return total;

  }
}