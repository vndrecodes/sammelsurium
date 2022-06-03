## Document Object Model

* Everything is a `node` (`element` as well)
* `children`:
  - children is a property of `element`
  - only `element` has children
  - children of `element` are also of type `element`
  - `document.createElement('div');`

* `childNodes`
  - `childNodes` is a property of a `node`
  - `childNodes` can contain any `node` (eg. text node)


### textcontent vs. innerHTML
```html
<div id="foo">
  Hello <span>World</span>!
</div>

<script>
let bar = document.getElementById('foo');

console.log(bar.textContent);
// Hello World!

console.log(bar.innerHTML);
// Hello <span>World</span>!

</script>
```
