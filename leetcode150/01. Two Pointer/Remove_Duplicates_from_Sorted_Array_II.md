[80. Remove Duplicates from Sorted Array II](https://leetcode.com/problems/remove-duplicates-from-sorted-array-ii/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var removeDuplicates = function (nums) {
	const n = nums.length;
	// base case
	if (n < 3) return n;

	// define pointers and counter
	let l = 0;
	let r = 1;
	let counter = 0;
	while (r < n) {
		if (nums[r] !== nums[l]) {
			counter = 0;
			nums[++l] = nums[r];
		} else {
			counter++;
			if (counter < 2) {
				nums[++l] = nums[r];
			}
		}

		r++;
	}

	return l + 1;
};
```
