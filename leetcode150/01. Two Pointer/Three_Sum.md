[15. 3Sum](https://leetcode.com/problems/3sum/)

-- Two Pointer

Time Complexity - O(n^2)
Space Complexity - O(n)

```javascript
var threeSum = function (numsArr) {
	//[-1,0,1,2,-1,-4]
	const nums = numsArr.sort((a, b) => a - b);
	//[-4,-1,-1,0,1,2]
	const result = [];
	const n = nums.length;

	for (let i = 0; i < n; i++) {
		if (i !== 0 && nums[i] === nums[i - 1]) continue;
		// skip same result (i.e. [-1, -1, 2]
		let l = i + 1;
		let r = n - 1;

		const remain = 0 - nums[i];

		while (l < r) {
			if (nums[l] + nums[r] === remain) {
				result.push([nums[i], nums[l], nums[r]]);
				l++;
				r--;
				while (l < r && nums[l] === nums[l - 1]) l++;
				while (l < r && nums[r] === nums[r + 1]) r--;
			} else if (nums[l] + nums[r] < remain) {
				l++;
			} else {
				r--;
			}
		}
	}
	return result;
};
```
