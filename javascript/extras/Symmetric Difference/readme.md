# Symmetric Difference

The mathematical term symmetric difference (`△` or `⊕`) of two sets is the set of elements which are in either of the two sets but not in both. For example, for sets `A = {1, 2, 3}` and `B = {2, 3, 4}, A △ B = {1, 4}`.

Symmetric difference is a binary operation, which means it operates on only two elements. So to evaluate an expression involving symmetric differences among three elements `(A △ B △ C)`, you must complete one operation at a time. Thus, for sets A and B above, and `C = {2, 3}`, `A △ B △ C = (A △ B) △ C = {1, 4} △ {2, 3} = {1, 2, 3, 4}`.

Create a function that takes two or more arrays and returns an array of their symmetric difference. The returned array must contain only unique values (no duplicates).

## Solutions

## Basic

- The main function *sym()* reduces given arrays utilising reducer to a single array. Also, it temporary converts the result to Set to remove duplicates.

- The reducer returns the symmetric difference of two arrays by picking out elements in parameterised arrays; arr1 and arr2.

### Advanced

The basic solution runs in `O(n^2)` time (Technically `O(n*m)`, where n and m are the lengths of the sets). This means that as the arrays get longer, the amount of computing power you need is going to increase exponentially.

Essentially, it’s similar to the basic solution, but takes advantage of the `Set` both to remove duplicates and to quickly do the equivalent of an includes check without having to iterate over everything. It’s a little more complicated, but computes in `O(n)` (linear) time. The difference here is that, rather than maintaining an `Array` of all the values that meet the criteria for symmetric difference, we do so with a `Set`, which we will later convert back to an `Array`.

- First, we create a `Set` called compare from the items in our current array. This will create a data structure that holds the unique values from the array we’re comparing against our accumulator `Set`.

- We can iterate over a `Set` using a `for ...of` loop, similar to an array. If our accumulator `Set` has the item, we `delete` it. If not, we `add` it.

- We do this with each array in the array of arrays, adding and removing values from our accumulator `Set` until we’ve iterated through all of our arrays, and each of the values inside of them.

- The reducer function will return out our accumulated `Set`. We then just use the spread operator to convert it back into an array.

## Related

[Set](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set)

[Array.prototype.reduce()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/Reduce)
