# Position attribute

* static: default value, does not change anything (we also call this *not positioned*)
* relative: only takes affect in conjunction with the properties `top`, `right`, `bottom`, `left`. It will be offset (top, right, bottom, left value)  to it's normal position
* fixed: stays relative to it's viewport (you cannot scroll away from the element). `top`, `right`, `bottom`, `left` attributes have to be applied as well
* absolute: uses a relative position to the next (positioned) anchestor (means the next element which `position` attribute has either `relative`, `fixed` or `absolute` value applied)


[learnlayout - position](https://learnlayout.com/position.html)
