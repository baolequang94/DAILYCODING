[430. Flatten a Multilevel Doubly Linked List](https://leetcode.com/problems/flatten-a-multilevel-doubly-linked-list/)

-- Linked List

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
/**
 * // Definition for a Node.
 * function Node(val, next, random) {
 *    this.val = val;
 *    this.next = next;
 *    this.random = random;
 * };
 */

/**
 * @param {Node} head
 * @return {Node}
 */
var copyRandomList = function (head) {
	if (!head) return null;

	const map = new Map();

	let cur = head;
	map.set(cur, new Node(cur.val));

	while (cur) {
		const curClone = map.get(cur);

		if (cur.random && !map.get(cur.random)) {
			map.set(cur.random, new Node(cur.random.val, null, null));
		}

		curClone.random = map.get(cur.random);

		if (cur.next && !map.get(cur.next)) {
			map.set(cur.next, new Node(cur.next.val, null, null));
		}

		curClone.next = map.get(cur.next) || null;

		cur = cur.next;
	}

	return map.get(head);
};
```
