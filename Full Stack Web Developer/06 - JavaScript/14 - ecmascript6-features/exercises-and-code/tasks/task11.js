// Task 11
//
const lastIndexOf = (arr, elt, start) => {
  for(let i = start; i >= 0; i--) {
    if (arr[i] === elt)
      return i;
  }
  return -1;
}

console.log(lastIndexOf([1, 2, 1, 2, 4], 4));
