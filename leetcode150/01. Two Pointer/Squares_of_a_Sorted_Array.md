[977. Squares of a Sorted Array](https://leetcode.com/problems/squares-of-a-sorted-array/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(n)

```javascript
var sortedSquares = function (nums) {
	const n = nums.length;
	let l = 0;
	let r = n - 1;
	const result = new Array(n);
	let index = n - 1;

	while (l <= r) {
		const numLeft = nums[l] * nums[l];
		const numRight = nums[r] * nums[r];

		if (numLeft > numRight) {
			result[index] = numLeft;
			l++;
		} else {
			result[index] = numRight;
			r--;
		}

		index--;
	}

	return result;
};
```
