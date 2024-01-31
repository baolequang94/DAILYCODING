[424. Longest Repeating Character Replacement](https://leetcode.com/problems/longest-repeating-character-replacement/)

-- Sliding Window

Time Complexity - O(n)
Space Complexity - O(n)

```javascript
var characterReplacement = function (s, k) {
	let l = 0;
	let r = 0;
	let n = s.length;
	let max = 0;
	const obj = {};
	let mostFreq = 0;

	while (r < n) {
		obj[s[r]] = (obj[s[r]] || 0) + 1;
		mostFreq = Math.max(mostFreq, obj[s[r]]);

		if (r - l + 1 - mostFreq > k) {
			obj[s[l]]--;
			l++;
		}

		max = Math.max(max, r - l + 1);
		r++;
	}

	return max;
};
```
