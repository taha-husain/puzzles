`function weird(x) {
  var tmp = 3;
  return function(y) {
    return x + y + ++tmp;
  }
}
var funny = weird(2);
var final_answer = funny(10);`

####Answer is `16`.

Explanation

`function weird` when called with 2 as an arguement, does nothing but initializes tmp variable with 3 and returns anonymous function.
When returned anonymous function is called like `funny(10)`, it returns addition of x(2), y(10) and ++tmp(++3 or 4). Which computes to 16.