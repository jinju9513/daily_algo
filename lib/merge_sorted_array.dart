class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    for(int i = m; i < m+n; i++){
    nums1[i]=nums2[i-m];
  }
    nums1.sort();
  }
}