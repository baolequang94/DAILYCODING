[159. Longest Substring with At Most Two Distinct Characters](https://leetcode.com/problems/longest-substring-with-at-most-two-distinct-characters/)

-- Sliding Window

Time Complexity - O(n)
Space Complexity - O(n)

```javascript
var lengthOfLongestSubStringTwoDistinct = function (s) {
	let l = 0;
	let r = 0;
	const n = s.length;
	const map = {};
	let max = 0;

	while (r < n) {
		map[s[r]] = (map[s[r]] || 0) + 1;

		while (l < n && Object.keys(map).length > 2) {
			map[s[l]] = map[s[l]] - 1;
			if (map[s[l]] === 0) {
				delete map[s[l]];
			}
			l++;
		}

		max = Math.max(max, r - l + 1);

		r++;
	}

	return max;
};
```
