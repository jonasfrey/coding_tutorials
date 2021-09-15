```javascript
// simple example 

var str = "asdf";
var first_char = str.split("").shift();

var str_null = null;
// var first_char_null = str_null.split("").shift(); //would throw error
var first_char_null = str_null?.split("").shift();

// advanced example 

var objs = [
    {   
        name: "proper object", 
       nested_obj: {
            nested_prop_arr:[1,2,3] 
        } 
    },
    {   
        name: "proper object", 
       nested_obj: {
            nested_prop_arr:[1,2,3] 
        } 
    },

    {   
        name: "object with missing nested_obj.nested_prop_arr", 
       nested_obj: {
            nested_prop_arr:[1,2,3] 
        } 
    },
    {   
        name: "object with missing nested_obj", 
    },
]

objs.forEach(function(o){

    // now we can for example check if nested_obj exists with a shorthand if 
    var arr = ((o.nested_obj) ? o.nested_obj : null);
    // but what do we do if we want to return a nested object of the nested object, we would have to double check 
    var arr = ((o.nested_obj) ? ((o.nested_obj.nested_prop_arr) ? o.nested_obj.nested_prop_arr : null) : null);



    // the below would throw error "Uncaught TypeError: Cannot read properties of undefined (reading 'nested_prop_arr')"
    //var str = o.nested_obj.nested_prop_arr; 

    // now our lord and saviour nullsafe operators

    var arr = o.nested_obj?.nested_prop_arr; 
    // now our lord and saviour nullsafe operators


    console.log(arr);
})
```