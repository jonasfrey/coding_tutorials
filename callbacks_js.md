```javascript
// there are variables
var str = "hello"
var bool = true 
var int = 11235
var float = 11.235

// in js there are really neat 'complex' variables like object and array 

var obj = {
    prop_str : "hello again", 
    nested_obj : {
        prop_int : 11235
    } 
}

var arr = [
    11235, 
    11.235, 
    true, 
    "helllllllloooo", 
    {
        test: true
    }, 
    [1,2,3,"asdf"]
];


// finally also a function can be stored in a variable !!!! 

var nice_function_variable = function(){
    
    // we can do whatever we want
    var a = true; 
    console.log("i was called !!"); 

}


// we can simply call that function 
nice_function_variable();

// lets make another 

var nice_function_which_does_something_with_param = function(im_a_param){
    
    im_a_param = (im_a_param) ? im_a_param : "parameter was not passed, so this string is the fallback value"

    console.log(im_a_param)

}

nice_function_which_does_something_with_param("im the string which is passed")


nice_function_which_does_something_with_param("cool!!")


// now lets make the matrix 


var nice_function_one = function(im_a_param_and_i_am_a_function){

    //so the parameter im_a_param_and_i_am_a_function will be a function, so then we execute it 

    im_a_param_and_i_am_a_function()

}

var the_param_which_is_a_function_stored_in_a_variable = function(){

    console.log("yes cool");
}

nice_function_one(the_param_which_is_a_function_stored_in_a_variable);


//congrats, your just made a callback 
