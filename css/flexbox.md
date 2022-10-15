# Flexbox

## `align-items: strech`
* The box of each **item** expands to the full height / width (on the cross axis) of it's **container**. Useful for creating equal height columns.

[Flexbox Tutorial | HTML & CSS Is Hard](https://www.internetingishard.com/html-and-css/flexbox/#cross-axis-vertical-alignment)



## `flex` shorthand

The single `flex` attribute is a shorthand for
  - `flex-grow: 1`
  - `flex-shrink: 1`
  - `flex-basis: 0` (with 0 we tell ideal size is equal for each item )
and controls how the available space in a cointainer is distributed amongst the items.

e.g. this settings makes equally sized items.

* Common setting for equally sized item is:
```css
.item {
  /* shrink and grow defaults to 1 */
  width: 100%; /* or flex-basis: 100% */
}
```

### `flex-grow`
* When set to `0` the items size is dependet on the content, when set to `1` item expands (or sizes equally when all items are set to `1`).
  
  
### `flex-shrink`
* Flex shrink will be only applied if the sum of the flex items width is larger than their parent container width eg. 3 itmes w. 100px width inside a 200px width container
* items with `flex-shrink` set, can become smaller than the `flex-basis`
* **Default** shrink factor is: `1` which lets every item shrink equally (set `0` for no shrink)

## `flex-basis`
* `flex-basis` defaults to auto and sets the width to the content width if no `width` attribute is set (`auto` looks if width is set and behaves similar to `width` attribute)
* set `0` for equally sized items
* `flex-basis` refers to width when `flex-direction` is row, height when `flex-direction` is column

## `flex-direction`

### `row`
* Blocklevel elements default to the full width of their parent, so flex grow, shrink, basis relates to width.

### `column`
* Flex grow, shrink, basis relates to height
* Since Block level elements default height depends on their content height, one has to add a `height` property or content. Otherwise items collapse.
```css
.container {
  display: flex;
  flex-direction: column;
}

.item {
  height: 50px;
  flex-grow: 1;
  flex-shrink: 1;
  flex-basis: auto; /* The items height value will be used from the height property */
  flex-basis: 0; /* The items height will be like the content height */
}
```