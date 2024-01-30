[485. Max Consecutive Ones](https://leetcode.com/problems/max-consecutive-ones/)

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var findMaxConsecutiveOnes = function (nums) {
	const n = nums.length;
	let max = 0;
	let counter = 0;
	for (let i = 0; i < n; i++) {
		if (nums[i] === 0) {
			counter = 0;
		} else {
			counter++;
			max = Math.max(max, counter);
		}
	}

	return max;
};
```
