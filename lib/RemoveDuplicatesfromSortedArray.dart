// import 'dart:collection';
class Solution {
  int removeDuplicates(List<int> nums) {
    // List<int> uniqueList = LinkedHashSet<int>.from(nums).toList();
    // return uniqueList.length;
    // Set<int> uniqueSet = nums.toSet();
    // List<int> uniqueList = uniqueSet.toList();

    // return uniqueList;
    if (nums.isEmpty) return 0; // 빈 배열 처리
    int i =0; //고유한 값이 저장될 위치

    for(int j = 0; j<nums.length; j++){
        if(nums[i] != nums[j]){ //nums[i]와nums[j]가 다르다면
            i++; //다음 고유한 값으로 이동
            nums[i] = nums[j]; //새로운 값 저장
        }
    }
    return i + 1; //유효한 길이 반환
  }
}