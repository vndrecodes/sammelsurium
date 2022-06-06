* Finally executes in every case and the `return` statement overrules the `return` statement in the try body.
```javascript
try {
  return "I won't be returned";
} catch (e) {
  // Handle e
} finally {
  return 'I will be returned';
}
```

* Return in try, do stuff in finally
```javascript
try {
  return "I'll be returned";
} catch (e) {
  // Handle e
} finally {
  console.log('Do something before return from try');
}
```
