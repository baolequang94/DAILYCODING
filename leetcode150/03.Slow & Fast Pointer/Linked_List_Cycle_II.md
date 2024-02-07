[142. Linked List Cycle II](https://leetcode.com/problems/linked-list-cycle-ii/)

-- Slow & Fast Pointer

Time Complexity - O(n)
Space Complexity - O(n)

```javascript
/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */

/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var detectCycle = function (head) {
	//  if (head === null || head.next === null) return null;

	let slow = head;
	let fast = head;

	while (fast && fast.next) {
		slow = slow.next;
		fast = fast.next.next;

		if (slow === fast) {
			break;
		}
	}

	if (!fast || !fast.next) return null;

	slow = head;

	while (slow !== fast) {
		fast = fast.next;
		slow = slow.next;
	}

	return slow;
};
```
