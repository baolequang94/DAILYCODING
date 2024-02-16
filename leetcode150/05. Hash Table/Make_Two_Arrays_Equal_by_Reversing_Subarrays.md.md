[1460. Make Two Arrays Equal by Reversing Subarrays](https://leetcode.com/problems/make-two-arrays-equal-by-reversing-subarrays/)

-- Hash Table

Time Complexity - O(2n)
Space Complexity - O(n)

```javascript
var canBeEqual = function (target, arr) {
	const table = {};

	for (const num of target) {
		table[num] = (table[num] || 0) + 1;
	}

	for (const num of arr) {
		if (table[num] === undefined || table[num] === 0) {
			return false;
		} else {
			table[num]--;
		}
	}

	return true;
};
```
