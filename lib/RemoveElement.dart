class Solution {
  int removeElement(List<int> nums, int val) {
    int k =0;

    for(int i = 0; i< nums.length; i++){ // [3,2,2,3]
        if(nums[i]!= val){ //val과 다른지 비교
            nums[k] = nums[i]; // val이 아닌 요소를 K애 배치
            k++; // 다음위치로 이동
        }
    }
    return k; //val이 아닌 요소의 갯수 반환
  }
}