[83. Remove Duplicates from Sorted List](https://leetcode.com/problems/remove-duplicates-from-sorted-list/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var deleteDuplicates = function (head) {
	let cur = head;

	while (cur && cur.next) {
		if (cur.val === cur.next.val) {
			cur.next = cur.next.next;
		} else {
			cur = cur.next;
		}
	}

	return head;
};
```
