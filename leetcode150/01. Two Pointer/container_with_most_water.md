[11. Container_with_most_water](https://leetcode.com/problems/container-with-most-water/description/)

-- Two Pointer

Time Complexity - O(n)
Space Complexity - O(1)

```javascript
var maxArea = function (height) {

    let l = 0
    let r = height.length - 1
    let max = -1
    while (l < r) {

        const min = Math.min(height[l], height[r])
        const area = min * (r - l)
        max = Math.max(max, area)
        if (height[l] < height[r]) {
            l++
        } else {
            r--
        }

    }

    return max

};
```
