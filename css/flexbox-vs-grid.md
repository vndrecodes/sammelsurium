# Flexbox vs. Grid

* Flexbox is one dimensional where grid is two dimensional
* Flex items can wrap, each line becomes a new flex container on its own!
* A two column layout with odd number of items will look like this when when items wrap:
```shell
┌───┐ ┌───┐
│   │ │   │
└───┘ └───┘
┌───┐ ┌───┐
│   │ │   │
└───┘ └───┘
┌─────────┐
│         │
└─────────┘
```
* With grid, layout of rows an columns can be controlled which would result in:
```shell
┌───┐ ┌───┐
│   │ │   │
└───┘ └───┘
┌───┐ ┌───┐
│   │ │   │
└───┘ └───┘
┌───┐
│   │
└───┘
```
* In grid sizing happens on container, in flex sizing happens on items

[Flex and grid — what's the difference? - MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Flexible_Box_Layout/Relationship_of_Flexbox_to_Other_Layout_Methods#flex_and_grid_%E2%80%94_whats_the_difference)