function sym (...args) {
  return [...args.reduce(reducer, new Set())];
}

function reducer (result, arr) {
  const compare = new Set(arr);
  
  for (let val of compare) {
    if (result.has(val)) {
      result.delete(val);
    } else {
      result.add(val);
    }
  }

  return result;
}

// Tests
sym([1, 2, 3], [5, 2, 1, 4]);
