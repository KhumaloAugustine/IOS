//: [Previous](@previous)
/*:
 ## Enumerations
 An enumeration is defined using the `enum` keyword and they define a common type for a group of related values. For example, given that there are seven colors in the rainbow you could create a enumeration named `ColorsOfRainbow` and add the seven colors as possible values. Enumerations are useful whenever you find yourself with an `if-else` ladder.
 
 Enumeration names are written with `UpperCamelCase`. The enumeration cases are written with smallCamelCase. This is best practice.
 
 Enumerations can come with prepopulated values. These are known as **raw values** and these should all be of the same type. When you define an enumeration to have a integer or string values you do not need to explicitly assign a raw value for each case becuase Swift will do this automatically for you.
 
 Enumerations are usually used with the **switch statement**. This allows us to match individual enumeration cases. A switch statement must be exhaustive meaning it should cover every possible case in an enumeration. However, you only need to cover a few enumeration cases if you create a default case in your switch statement.
 
 The keywords `break` and `fallthrough` are control flow statements used with enumerations (we learn about control flow statements in our lesson on Control Flow). `break` causes a switch statement to end its execution immediately and to transfer control to the code after a switch's closing brace (}). `fallthrough` will make a switch statement to fall into the next case.
 
 As of Swift 5, switch statements are able to handle future unknown enum cases. This change only applies to system defined enums therefore this does not affect our user defined enums.
 
 Sometimes it is useful to have a value stored with a enumeration case. This is called an **associated value** and this can be any type that you define.
 
*/

//: [Next](@next)
