[LeetCode URL](https://leetcode.com/problems/move-zeroes/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var moveZeroes = function (nums) {
	let l = 0;
	let r = 1;

	const length = nums.length;

	while (r < length && l < length) {
		if (nums[l] !== 0) {
			l++;
			r++;
		} else if (nums[r] === 0) {
			r++;
		} else {
			const tmp = nums[r];
			nums[r] = nums[l];
			nums[l] = tmp;
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
