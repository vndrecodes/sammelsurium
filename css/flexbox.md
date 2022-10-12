# Flexbox

## `align-items: strech`
* The box of each **item** expands to the full height / width (on the cross axis) of it's **container**. Useful for creating equal height columns.

[Flexbox Tutorial | HTML & CSS Is Hard](https://www.internetingishard.com/html-and-css/flexbox/#cross-axis-vertical-alignment)

## `flex-grow`
* When set to `0` the items size is dependet on the content, when set to `1` item expands (or sizes equally when all items are set to `1`).


## `flex-shrink`
* Flex shrink will be only applied if the sum of the flex items width is larger than their parent container width eg. 3 itmes w. 100px width inside a 200px width container
* **Default** shrink factor is: `1` which lets every item shrink equally (set `0` for no shrink)


## `flex` shorthand
The single `flex` attribute is a shorthand for
  - `flex-grow: 1`
  - `flex-shrink: 1`
  - `flex-basis: 0` (with 0 we tell ideal size is equal for each item )

this settings makes equally sized items

* Common setting for equally sized item is:
```css
.item {
  /* shrink and grow defaults to 1 */
  width: 100%; /* or flex-basis: 100% */
}
```

## `flex-basis`
* `flex-basis` defaults to auto and sets the width to the content width (behaves similar to `width` attribute) 
* set `0` for equally sized items

