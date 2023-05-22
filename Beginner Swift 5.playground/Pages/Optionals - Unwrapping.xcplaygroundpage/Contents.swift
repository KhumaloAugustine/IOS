//: [Previous](@previous)
/*:
 ## Optionals - Unwrapping
 The idea of optionals is similar to a gift box. You do not know what is inside the box - it might have a gift or it might have nothing (April Fools?). In Swift, we use a concept known as **optional binding** to check whether an optional variable has a value or not. This is a safe way of checking if an optional has a value. An alternative way is **force unwrapping**. This is where we are sure an optional has a value. If for some reason the we force unwrap an optional that does not in fact have a value then this will result in a program crash.
 
 Sometimes we do not provide an initial value for our variable but it is clear from our program's structure that the variable will have a value. In this case, there is no need to make the variable optional. Instead we make it *implicity optional*. Implicit optionals are in fact optionals behind the scenes but when they get a value this is unwrapped automatically and the variable does not need to be treated as an optional. If no value exists when we attempt to access an implicit optional this will result in a program crash.
*/




//: [Next](@next)
