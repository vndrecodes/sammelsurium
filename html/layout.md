# HTML

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


### Margin

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
