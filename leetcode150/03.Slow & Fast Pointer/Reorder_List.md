[143. Reorder List](https://leetcode.com/problems/reorder-list/)

-- Slow & Fast Pointer

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
var reorderList = function (head) {
	let slow = head;
	let fast = head;

	while (fast && fast.next) {
		slow = slow.next;
		fast = fast.next.next;
	}

	let prev = null;
	while (slow) {
		const next = slow.next;
		slow.next = prev;
		prev = slow;
		slow = next;
	}

	let left = head;
	let right = prev;

	while (left.next && right.next) {
		const nextLeft = left.next;
		const nextRight = right.next;

		left.next = right;
		right.next = nextLeft;

		left = nextLeft;
		right = nextRight;
	}
};
```
