[209. Minimum Size Subarray Sum](https://leetcode.com/problems/minimum-size-subarray-sum/)

-- Sliding Window

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var minSubArrayLen = function (target, nums) {
	const n = nums.length;
	let minLen = n + 1;

	let l = 0;
	let r = 0;

	let sum = 0;
	let count = 0;

	while (r <= n) {
		if (sum >= target) {
			minLen = Math.min(minLen, count);
			sum -= nums[l];
			l++;
			count--;
		} else {
			sum += nums[r];
			count += 1;
			r++;
		}
	}

	return minLen === n + 1 ? 0 : minLen;
};
```
