## console

* `console.log()` – For general output of logging information.
* `console.info()` – Informative logging of information.
* `console.debug()` – Outputs a message to the console with the log level debug.
* `console.warn()` – Outputs a warning message.
* `console.error()` – Outputs an error message.

* `console.log` css.
```javascript
console.log('%c Foo', 'color:white');
```

* `console.log` string substitutions
```shell
%s – string
%i or %d – integer
%o or %O – object
%f – float
```

* `console.assert()`
* `console.count()`
* `console.dir()` - Interactive list of object properties
* `console.group()` `console.groupEnd()` Grouping printouts
* `console.table()` Printout data as a table
* `console.time()` `console.timeEnd()` start - stop time
* `console.trace()` Printout stacktrace


## fetch
* Takes URL, returns Promise
```javascript
  fetch('https://example.com/api/v1/resource').then((res) => {
    console.log(res);
  })
```
```javascript
  fetch('https://example.com/api/v1/resource').then((res) => {
    console.log(res.headers);
    console.log(res.status);
    console.log(res.ok); // true if status [200,300)
    res.json() //res.text(), res.formData()...
  }).then((data) => {
      console.log(data);
    })  
```
```javascript
  let options = {
    method: 'POST',
    headers: {'Content-Type': 'appliaction/json'},
    body: JSON.stringify({myKey: 'myValue'})
  };
  //
  fetch('https://example.com/api/v1/resource', options)
  .then((res) => {
    res.json();
  })
  .then((data) => {
    console.log(data);
  });
```
```javascript
  async function asyncFetch() {
    let response = await fetch('https://jsonplaceholder.typicode.com/posts');
    let jsonData = await response.json();
    console.log(jsonData);
  }
```
[JavaScript Fetch API to make HTTP requests][js1]

## References
[JavaScript Fetch API to make HTTP requests][js1]

[js1]: https://jscurious.com/javascript-fetch-api-to-make-http-requests/ "JavaScript Fetch API to make HTTP requests"
