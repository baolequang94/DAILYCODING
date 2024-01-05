[259. 3Sum Smaller](https://leetcode.com/problems/3sum-smaller/)

-- Two Pointer

Time Complexity - O(n^2)
Space Complexity - O(n)

```javascript
var threeSumSmaller = function (numsArr, target) {
	const nums = numsArr.sort((a, b) => a - b);
	const n = nums.length;

	let closest;

	for (let i = 0; i < n; i++) {
		let l = i + 1;
		let r = n - 1;

		if (i === 0) {
			closet = nums[i] + nums[l] + nums[r];
		}

		while (l < r) {
			const curSum = nums[i] + nums[l] + nums[r];

			closest =
				Math.abs(target - curSum) < Math.abs(target - closet) ? curSum : closet;

			if (curSum === target) {
				return target;
				// while (l < r && nums[l] === nums[l - 1]) l++;
				// while (l < r && nums[r] === nums[r + 1]) r--;
			} else if (curSum < target) {
				l++;
			} else {
				r--;
			}
		}
	}
	return closest;
};
```
