# Images
* Modern way to reduce CLS for images instead of using explicit `width` and `height` attribute on html elements:
```html
<style>
img, picture {
    display: block;

    width: 100%;
    height: auto;
}

.myimg {
    aspect-ratio: 2 / 3;
}
</style>

<img class="myimg" sizes="(min-width: 1000px) 400px, 300px" src="/assets/myimg.jpg" srcset="/assets/300w/myimg.webp 300w, /assets/400w/myimg.webp 400w" alt="">
```
[https://web.dev/articles/optimize-cls?utm_source=lighthouse&utm_medium=devtools&hl=de#modern_best_practice_for_setting_image_dimensions](https://web.dev/articles/optimize-cls?utm_source=lighthouse&utm_medium=devtools&hl=de#modern_best_practice_for_setting_image_dimensions)