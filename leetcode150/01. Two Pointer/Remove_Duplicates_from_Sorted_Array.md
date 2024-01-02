[26. Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var removeDuplicates = function (nums) {
	const n = nums.length;
	// base case
	if (n < 2) {
		return n;
	}

	// define pointers
	let l = 0;
	let r = 1;

	while (r < n) {
		if (nums[r] !== nums[l]) {
			nums[++l] = nums[r];
		}
		r++;
	}

	return l + 1;
};
```
