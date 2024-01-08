[75. Sort Colors](https://leetcode.com/problems/sort-colors/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var sortColors = function (nums) {
	const n = nums.length;
	let l = 0;
	let cur = 0;
	let r = n - 1;

	while (cur <= r) {
		if (nums[cur] === 0) {
			[nums[cur], nums[l]] = [nums[l], nums[cur]];
			l++;
			cur++;
		} else if (nums[cur] === 2) {
			[nums[cur], nums[r]] = [nums[r], nums[cur]];
			r--;
		} else {
			cur++;
		}
	}

	return nums;
};
```
