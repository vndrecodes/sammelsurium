# HTML

## Site Layout
### Container Layout w/o width 100% + scrollbar issue
```html

<style>
.container {
  width: calc(100% - (2 * 16px));
  max-width: 768px;
  margin: 0 auto;
}

.overflowing-component {
  width: 100%;
}
</style>

<body>
<section>
  <div class="container">
    <div class="overflowing-component">
      </div>
  </div>
</section>
</body>

```

### Prevent horizontal page overflowing

```html
<style>
body {
  max-with: 100vw;
  overflow-x: hidden;
}

main {
  max-width: 100vw;
  width: 100%
}


</style>

<body>
<main></main>
</body>
```

## Centering

### Felxbox

```html
<!-- Centering child div inside parent div -->
<div class="parent">
  <div class="child"></div>
</div>

<style media="screen">
  .parent {
    width: 400px;
    height: 400px;
    display: table-cell;
    text-align: center;
    vertical-align: middle;
  }

  .child {
    width: 100px;
    height: 100px;
    display: inline-block;
  }
</style>
```

### Grid

```html
<!-- Centering child div inside parent div -->
<div class="parent">
  <div class="child"></div>
</div>

<style media="screen">
  .parent {
    width: 400px;
    height: 400px;
    display: grid;
    justify-content: center;
    align-content: center;
  }

  .child {
    width: 100px;
    height: 100px;
  }
</style>
```


### Margin
* `marging: auto` works for block level elements!
```html
<!-- Centering child div inside parent div -->
<div class="parent">
  <div class="child"></div>
</div>

<style media="screen">
.parent {
  width: 400px;
  height: 400px;
  display: flex;
}

.child {
  width: 100px;
  height: 100px;
  margin: auto;
}
</style>
```


### Position

```html
<!-- Centering child div inside parent div -->
<div class="parent">
  <div class="child"></div>
</div>

<style media="screen">
.parent {
  width: 400px;
  height: 400px;
  position: relative;
}

.child {
  width: 100px;
  height: 100px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>
```
