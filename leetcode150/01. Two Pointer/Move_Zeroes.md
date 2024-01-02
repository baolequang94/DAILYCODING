[LeetCode URL](https://leetcode.com/problems/move-zeroes/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var moveZeroes = function (nums) {
	const n = nums.length;
	let l = 0;
	let r = 1;
	while (r < n) {
		if (nums[l] !== 0) {
			l++;
			r++;
		} else if (nums[r] === 0) {
			r++;
		} else {
			nums[l] = nums[r];
			nums[r] = 0;
		}
	}

	return nums;
};
```

-- Counting Zeroes then Add

Time Complexity - O(n)
Space Complexity - O(n)

```javascript
var moveZeroes = function (nums) {
	let countZeroes = 0;
	let left = 0;

	for (let i = 0; i < nums.length; i++) {
		if (nums[i] === 0) {
			countZeroes++;
		} else {
			nums[left] = nums[i];
			left++;
		}
	}

	while (left < nums.length && countZeroes > 0) {
		nums[left] = 0;
		left++;
		countZeroes--;
	}

	return nums;
};
```
