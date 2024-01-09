[82. Remove Duplicates from Sorted List II](hhttps://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var deleteDuplicates = function (head) {
	const dummy = new ListNode();
	dummy.next = head;

	let prev = dummy,
		cur = head;

	while (cur) {
		if (cur.next && cur.val === cur.next.val) {
			const toDeleteVal = cur.val;
			while (cur && cur.val === toDeleteVal) {
				cur = cur.next;
			}
			prev.next = cur;
		} else {
			prev = cur;
			cur = cur.next;
		}
	}

	return dummy.next;
};
```
