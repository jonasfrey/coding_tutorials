# terminology 
## nesting 
a nested tag is a tag in an other tag, the other tag is the parent, the tag is the child
```html
<tag> <!-- the parent tag -->
    content...
    <tag> <!--  the nested child tag -->
        content...
    </tag> 
</tag>
```
## tag 
tag names are a really old approach to give elements certain behaviours , mainly in styling but also in functionning 
in html (:0 eeeww xml!, btw) every element must have its tag name 
# selectors
## tag names
```css
div{ color: red }
```
theese would be red 
```html
<div > red </div>
<div class='green'> red </div>
<div class='div' > red </div>

<div> 
    <p>red<p>    
    <a>red<a>    
    <div>red<div>    
</div>

<p class='div' > n </p>
<a class='div' > n </a>
```
tag names select every tag no matter in what tag that tag is nested
```html
<p> 
    <p>n<p>    
    <a>n<a>    
    <div>red<div>    
</p>
```

## class names  
```css
.my_class{ color: red }
```
will select 
```html
<div > red </div>
<div class='my_class'> red </div>
<div > red </div>
<p class='div' > black </p>
```

