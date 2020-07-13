const sym = (...args) => [
  ...new Set(
    args.reduce((acc, arg) => [
      ...acc.filter(el => !arg.includes(el)),
      ...arg.filter(el => !acc.includes(el))
    ], [])
  )
];

// Tests
sym([1, 2, 3], [5, 2, 1, 4]);
