# Box Model

### `display: block`
Block level boxes have following characteristics:
* Box will always break onto a new line
* `width` and `height` properties preserved
* boxes extend to fill leftover space in parent containers (100%)
Outer display type: block

### `display: inline`
Inline block boxes behave as follow:
* Box does not break onto new line
* `width` and `height` properties are ignored
* The size of inline elements is just the size of their content
Outer display type: block


### `display: flex`
The Box still behaves like a block box, but direct children inside the box become flex items
Outer display type: block, inner display type flex

### `display: inline-block`
* prevents break onto new-line
* preserves `width` and `height` of element
* `padding`, `margin` and `border` will also be preserved




* `padding` - space around **content**
* `border` - solid line *outside* of **padding**
* `margin` - space around the *outside* of the **border**
   * **vertical** margins of two elements touching each other (adjacent or nested) collaps, **horizontal** not!

* `width` (of an element) - `content-box` vs `border-box`
* `color` - color of the elements **content** (usually text)
* `background-color` - color behind **content** & **padding**


## Magic setup
* Change standard box model to alternative box model
```css
html {
  box-sizing: border-box;
}
*,
*::before,
*::after {
  box-sizing: inherit;
}
```