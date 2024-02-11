[328. Odd Even Linked List](https://leetcode.com/problems/odd-even-linked-list/description/)

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
 * @return {ListNode}
 */
var oddEvenList = function (head) {
	if (!head) return null;
	let odd = head;
	let even = head.next;

	const startEven = even;

	while (odd && even && even.next) {
		odd.next = even.next;
		even.next = even.next.next;

		odd = odd.next;
		even = even.next;
	}

	odd.next = startEven;

	return head;
};
```
