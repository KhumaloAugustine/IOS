//: [Previous](@previous)
/*:
 ## Strings and Interpolation
 A string is a series of characters represented by the [String](https://developer.apple.com/documentation/swift/string) type. Whenever we include `String` values in our code, we do so using quotation marks and call the predefined `String` a *string literal*. A `String` can start out with no characters and we call this an empty `String`.
 
 We are able to add multiple `String` values together into one by **concatenation**. Concatenation involves using the + operator to combine `String` values to create a new `String` value. This means that the + operator does not work as a normal arithmetic operator when used with `String` values and this is possible due to **operator overloading**.
 
 There are times we need to construct a new `String` value from a mixture of constants or variables. We use **string interpolation** to acheive this by wrapping the variable or constant in parenthesis and prefixing it with a backslash \\.
 
 There are special characters that have a significant meaning when you apply the backslash to them in a `String`. For example, an ordinary n is just an n in a String literal. However, when you add a backslash to make it \n then it becomes a new line character. Other special characters include:
 
 * Backslash \\
 * Double Quotation Mark \"
 * Single Quotation Mark \'
 * Horizontal Tab \t
 
 As of Swift 5, it is possible to create raw strings. This makes it possible to express string literals as they are. Raw strings are created using the # before and after the String value.
*/

//: [Next](@next)
