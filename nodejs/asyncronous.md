# Asyncronous functions

* Asynchronous functions return promises
* Promises resolve once the function complete it's tasks
* And can proceed with tasks in another function which may be attached to the promise
* There several ways handling promises...

## The pre Promises, callback way
* Handling asynchronous calls with callback functions

```javascript
myAsyncFunction(myArg, callback);

function callback(err, result) {
  if (err) {
    console.log(err);
  } else {
    console.log(result);
  }
}
```


## Promises
### Instantiate new Promise

```javascript
// This is eager
let myPromise = new Promise((resolve, reject) => {
  // do some stuff
  someStuffWentGood ? resolve(myResult) : reject("My error");
});
```

### Handling Promises
* `.then()` can be called on promises to handle stuff when promise resolves (or `.catch()` when rejects). `.then()` itself creates a new independent Promise

```javascript
promisReturningFunction().then((result,reject) => {
  handle(result);
});
```

* `.then` and `.catch` can be chained as well (This is the preferred way)

```javascript
myPromiseReturningFunction().then((result) => console.log('Do something on success')).catch((error) => console.log('Do something on error'));
```


* Static `Promise.all()` method awaits all promises which are passed as an argument (array)

```javascript
let myPromises = [
  new Promise((resolve, reject) => {resolve('foo')}),
  new Promise((resolve, reject) => {resolve('bar')}),
  new Promise((resolve, reject) => {resolve('baz')})
]

Promise.all(myPromises).then((result) => console.log(result));
```


## async-await
* `async` / `await` is build on top of Promises. We can `await` an Promise inside an `async` declared function

```javascript
async function myFunction() {
  let foo = await myPromiseReturningFunction();
  console.log('This statement will be printed after myPromiseReturningFunction() returns (resolves o. rejects) and foo will be defined with an value (only when resolves)');
}
```
