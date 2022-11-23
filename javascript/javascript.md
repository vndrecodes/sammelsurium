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

### Arguments
```javascript
function myUnknownArgSizeFunction(...args) {
  console.log(arguments.length);

  for (const arg of args) {
    console.log(arg);
  }
}

myUnknownArgSizeFunction('foo', 'bar', 'baz');
```


## Classes
### Inheritance
```JavaScript
class SuperClass {
}

module.exports = SuperClass
```

```Javascript
const SuperClass = require('./superClass.js');

class SubClass extends SuperClass {
}

module.exports = SubClass
```

## Misc
### truthy/falsy values
* Following values considered to be falsy. Everything else will eval to true (`if(anythingElse)` holds)

```javascript
null
undefined
NaN
""
0
false
```

* To check if variable isn not declared:
```javascript
if(typeof myVal === 'undefined') console.log('myVal isn\'t declared');
```


### Destructing
Declare variable to unpack values from Object literals.  
`let {bar} = foo` will assign `bar` to the value corresponding to the key of the same name from the object `foo`.
```JavaScript
let foo = {
  john: 'doe',
  baz: 'alice',
  bar: 'Hello World'
}

let {bar} = foo;

//> console.log(bar);
// Hello World
```
