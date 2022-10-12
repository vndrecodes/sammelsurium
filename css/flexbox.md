# Flexbox

## `align-items: strech`
* The box of each **item** expands to the full height of it's **container**. Useful for creating equal height columns.

[Flexbox Tutorial | HTML & CSS Is Hard](https://www.internetingishard.com/html-and-css/flexbox/#cross-axis-vertical-alignment)

## `flex-grow`
* When set to `0` the items size is dependet on the content, when set to `1` item expands (or sizes equally when all items are set to `1`).


## `flex-shrink`
* Flex shrink will be only applied if the sum of the flex items width is larger than their parent container width eg. 3 itmes w. 100px width inside a 200px width container
* **Default** shrink factor is: `1` which lets every item shrink equally (set `0` for no shrink)

