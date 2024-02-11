[2. Add Two Numbers](https://leetcode.com/problems/add-two-numbers/description/)

-- Linked List

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} head
 * @return {void} Do not return anything, modify head in-place instead.
 */
var addTwoNumbers = function (l1, l2) {
	let h1 = l1;
	let h2 = l2;

	const l3 = new ListNode(0);
	let h3 = l3;

	let remain = 0;

	while (h1 || h2 || remain) {
		const sum = (h1?.val || 0) + (h2?.val || 0) + remain;
		const val = sum % 10;
		remain = Math.floor(sum / 10);

		const newNode = new ListNode(val);
		h3.next = newNode;
		h3 = newNode;

		h1 = h1?.next;
		h2 = h2?.next;
	}

	return l3.next;
};
```
