[16. 3Sum Closest](https://leetcode.com/problems/3sum-closest/)

-- Two Pointer

Time Complexity - O(n^2)
Space Complexity - O(1)

```javascript
var threeSumClosest = function (numsArr, target) {
	//[-1,0,1,2,-1,-4]
	const nums = numsArr.sort((a, b) => a - b);
	console.log(JSON.stringify(nums));
	//[-4,-1,-1,0,1,2]
	const n = nums.length;

	let closest;

	for (let i = 0; i < n; i++) {
		let l = i + 1;
		let r = n - 1;

		if (i === 0) {
			closest = nums[i] + nums[l] + nums[r];
		}

		while (l < r) {
			const curSum = nums[i] + nums[l] + nums[r];

			closest =
				Math.abs(target - curSum) < Math.abs(target - closest)
					? curSum
					: closest;

			if (curSum === target) {
				return target;
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
