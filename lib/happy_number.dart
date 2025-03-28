class Solution {
  bool isHappy(int n) {
  int sum = 0;
  Set<int> seen = {};
  while (n != 1 && !seen.contains(n)) {
    seen.add(n); // 현재 숫자를 저장
    n =sumOfSquares(n); // 다음 숫자 계산
  }

  return n == 1;
  }
}

int sumOfSquares(int num) {
  int sum = 0;
  while (num > 0) {
    int digit = num % 10;      // 각 자리 숫자 꺼냄
    sum += digit * digit;      // 제곱해서 더함
    num ~/= 10;                // 숫자를 한 자리 줄임
  }
  return sum;
}