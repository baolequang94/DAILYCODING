[763. Partition Labels](https://leetcode.com/problems/partition-labels/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(n)

```javascript
var partitionLabels = function (s) {
	const n = s.length;

	const pos = {};

	for (let j = 0; j < n; j++) {
		pos[s[j]] = j;
	}

	const result = [];
	let startPoint = 0;
	let endPoint = 0;

	for (let i = 0; i < n; i++) {
		endPoint = Math.max(pos[s[i]], endPoint);

		if (i === endPoint) {
			result.push(endPoint - startPoint + 1);
			endPoint = startPoint = endPoint + 1;
		}
	}

	return result;
};
```
