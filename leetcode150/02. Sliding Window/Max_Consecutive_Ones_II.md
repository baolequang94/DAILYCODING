[487. Max Consecutive Ones II](https://leetcode.com/problems/max-consecutive-ones-ii/)

Time Complexity - O(1)
Space Complexity - O(n)

```javascript
var findMaxConsecutiveOnes = function (nums) {
	const n = nums.length;
	let max = 0;
	let l = 0;
	let r = 0;
	let counter = 0;

	while (r < n) {
		if (nums[r] === 0) {
			counter++;
		}

		while (counter > 1) {
			if (nums[l] === 0) {
				counter--;
			}
			l++;
		}

		max = Math.max(max, r - l + 1);

		r++;
	}

	return max;
};
```
