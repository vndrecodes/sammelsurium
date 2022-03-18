## onclick Event

### In HTML:
```html
<element onclick="myScript">

<h1 onclick="myScript(this)"></h1>
```

### In JavaScript:
```javascript
object.onclick = function(){myScript};
```
```JavaScript
function myScript(elem) {
  console.log(elem);
}

```

### In JavaScript, using the addEventListener() method:
```javascript
object.addEventListener("click", myScript);
```


## Drag and Drop
```HTML
<div id="drop_zone" ondrop="dropHandler(event);" ondragover="dragOverHandler(event);">
  <p>Drag one or more files to this Drop Zone ...</p>
</div>
```

```JavaScript
function dropHandler(ev) {
  console.log('File(s) dropped');

  // Prevent default behavior (Prevent file from being opened)
  ev.preventDefault();
}
function dragOverHandler(ev) {
  console.log('File(s) in drop zone');

  // Prevent default behavior (Prevent file from being opened)
  ev.preventDefault();
}

```
[File drag and drop][1]




[1]: https://developer.mozilla.org/en-US/docs/Web/API/HTML_Drag_and_Drop_API/File_drag_and_drop)
