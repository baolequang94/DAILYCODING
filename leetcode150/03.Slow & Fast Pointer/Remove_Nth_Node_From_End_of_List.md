[19. Remove Nth Node From End of List](https://leetcode.com/problems/remove-nth-node-from-end-of-list/)

-- Slow & Fast Pointer

Time Complexity - O(n)
Space Complexity - O(n)

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
 * @param {number} n
 * @return {ListNode}
 */
var removeNthFromEnd = function (head, n) {
	let slow = head;
	let fast = head;
	let count = n;

	while (fast.next && count) {
		fast = fast.next;
		count--;
	}

	while (fast.next) {
		slow = slow.next;
		fast = fast.next;
	}

	if (count === 0) {
		slow.next = slow.next.next;
	} else {
		head = head.next;
	}

	return head;
};
```
