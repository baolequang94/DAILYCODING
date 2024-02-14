[430. Flatten a Multilevel Doubly Linked List](https://leetcode.com/problems/flatten-a-multilevel-doubly-linked-list/)

-- Linked List

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
/**
 * // Definition for a Node.
 * function Node(val,prev,next,child) {
 *    this.val = val;
 *    this.prev = prev;
 *    this.next = next;
 *    this.child = child;
 * };
 */

/**
 * @param {Node} head
 * @return {Node}
 */
var dfs = function (head) {
	if (!head) return null;

	let cur = head;
	let pre = cur;

	while (cur) {
		pre = cur;

		if (cur.child) {
			const tail = dfs(cur.child);
			const next = cur.next;

			cur.next = cur.child;
			cur.child.prev = cur;
			cur.child = null;

			if (next) {
				tail.next = next;
				next.prev = tail;
			}

			//reset pointer
			pre = tail;
			cur = tail.next;
		} else {
			cur = cur?.next;
		}
	}

	return pre; // tail
};

var flatten = function (head) {
	dfs(head);
	return head;
};
```
