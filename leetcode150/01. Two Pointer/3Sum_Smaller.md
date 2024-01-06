[259. 3Sum Smaller](https://leetcode.com/problems/3sum-smaller/)

-- Two Pointer

Time Complexity - O(n^2)
Space Complexity - O(1)

```javascript
var threeSumSmaller = function (numsArr, target) {
	const nums = numsArr.sort((a, b) => a - b);
	const n = nums.length;

	let count = 0;

	for (let i = 0; i < n; i++) {
		let l = i + 1;
		let r = n - 1;

		while (l < r) {
			const curSum = nums[i] + nums[l] + nums[r];

			if (curSum >= target) {
				r--;
			} else if (curSum < target) {
				count = count + r - l;
				l++;
			}
		}
	}
	return count;
};
```
