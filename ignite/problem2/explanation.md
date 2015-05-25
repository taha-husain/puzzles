The thing with `==` (double equal operator) is it compares but not strictly.
Strictly means do not check for datatypes.

`“0” == 0 // true`
In first case, one is a string a another is an integer.
When both are compared, the string is either type converted into integer or integer in string. Which results in `true`.

`“” == 0 // true`
In above case, interpreter must've tried type conversion these two variables and failed at comparing, but then comes coercing in picture, it forces to `""`(type converted NaN to be compared with 0 and returns true).

`“” == “0” // false`
Well, no type conversion needed since both are strings, but basic comparison fails i.e. length of the strings are not equal. Returns `false` right away.