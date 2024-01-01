[LeetCode URL](https://leetcode.com/problems/two-sum/)

-- Hash Table

Time Complexity - O(n)
Space Complexity - O(n)

```javascript
var twoSum = function (nums, target) {
	const dict = {};

	for (let i = 0; i < nums.length; i++) {
		if (dict[target - nums[i]] !== undefined) {
			return [i, dict[target - nums[i]]];
		}

		dict[nums[i]] = i;
	}
};
```
