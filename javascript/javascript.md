# Javascript

## Arrays
```Javascript
['X','O'].concat('W')        // ['X','O','W']

['X','O','W'].slice(2)       // ['W']

['X','O','W'].indexOf('W')   // 2

['X','O','W'].reverse()      // ['W','O','X']

['X','O','W'].sort()         // ['O','W','X']

['X','O','W'].shift()        // ['O','W']

['X','O','W'].unshift('F')   // ['F','X','O','W']

['X','O','W'].pop()          // ['X','O']

['X','O','W'].push('F')      // ['X','O','W','F']

['X','O','W'].includes('O')  // true
```

## Functions
### Functional
```javascript
[1,1,1].map((x) => {
  return x+1;
});

[1,1,1].map((x) => x+1);
```

### Self invoking
```javascript
(async () => {
  let result = await fetch('https://example.com');
  console.log(result);
})();
```
