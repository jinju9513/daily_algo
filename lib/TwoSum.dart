class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int,int> numMap = {};

    for(int i = 0; i < nums.length; i++){
        int result = target - nums[i]; //target - nums 수의 짝꿍값
        if(numMap.containsKey(result)){// 필요햔 수가 있는지 확인
            return [numMap[result]!, i];
        }
        numMap[nums[i]] = i;
    }
    return [];
  }
}
void main(List<String> args) {
    Solution solution = Solution();
    print(solution.twoSum([2,7,11,15], 9));
}