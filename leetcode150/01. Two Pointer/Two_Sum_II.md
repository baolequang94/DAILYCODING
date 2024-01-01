[LeetCode URL](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var twoSum = function (nums, target) {
	let l = 0;
	let r = nums.length - 1;

	while (l < r) {
		const sum = nums[l] + nums[r];

		if (sum > target) {
			r--;
		} else if (sum < target) {
			l++;
		} else {
			return [l + 1, r + 1];
		}
	}
};
```
