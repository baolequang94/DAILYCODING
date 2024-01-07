[42. Trapping Rain Water](https://leetcode.com/problems/trapping-rain-water/description/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(n1)

```javascript
var trap = function (height) {
	let waterSum = 0;
	const n = height.length;

	let max = 0;
	for (let i = 0; i < n; i++) {
		if (height[i] > height[max]) {
			max = i;
		}
	}

	let maxLeft = 0;

	for (let l = 0; l < max; l++) {
		maxLeft = Math.max(maxLeft, height[l]);
		waterSum += Math.min(height[max], maxLeft) - height[l];
	}

	let maxRight = 0;

	for (let r = n - 1; r > max; r--) {
		maxRight = Math.max(maxRight, height[r]);
		waterSum += Math.min(height[max], maxRight) - height[r];
	}

	return waterSum;
};
```
