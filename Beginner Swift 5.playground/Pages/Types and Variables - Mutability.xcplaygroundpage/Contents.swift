//: [Previous](@previous)
/*:
 ## Types and Variables - Mutability
 Swift uses variables and constants to store and refer to values by an identifying name. Variables can change their values but constants cannot. When something in Swift can change value we say it is **mutable**. When it cannot change value we say it is **immutable**.
 
 All variables and constants need to start by being *declared*. In Swift, variables are declared using the `var` keyword and constants are declared by using the `let` keyword. When we declare a variable or constant we need to provide a *type*. Swift is a *type-safe* language meaning you need to be clear about the type of values your variables and constants can work with. Examples of type include `Int`, `String`, `Double`, `Float` and `Bool`. Swift is also referred to as a *statically-typed* language because you cannot change the type of a variable or constant has once you set it. In contrast, dynamic languages like Python and JavaScript can change their type at run time.
 
 * [Int](https://developer.apple.com/documentation/swift/int) an `Integer` is a signed whole number. We say an integer is signed meaning it can be positive or negative.
 * [Float](https://developer.apple.com/documentation/swift/float) a `Float` is a fractional or decimal number. A Float is holds on to a certain level of precision or a certain number of digits (meaning a decimal number is truncated at some point).
 * [Double](https://developer.apple.com/documentation/swift/double) a `Double` is a fractional number. It is like a Float but can hold onto twice as many digits which is why it is called a Double. We say a Double is more precise than a Float.
 * [String](https://developer.apple.com/documentation/swift/string) a `String` is a series of Unicode characters. We will talk about this when we get to our String and Interpolation lesson.
 * [Bool](https://developer.apple.com/documentation/swift/bool) a `Bool` (Boolean) type is one whose instances are either **true** or **false**. Booleans create what we call conditional statements using the `if-else` statement.
 
 Whenever we explicitly declare the type of a variable or constant we say we are using *type annotation*. This is important if we do not provide an initial value for our variable or constant. If we do provide an initial value, type annotation is not neccessary. This is because the type can be inferred from the initial value. Where possible, we should allow Swift to infer the type instead of using type annotation.
*/
var a =  2
var b: Float = 2.5
var c: Double = 2.8
//Type casting 
let answer =  b +  Float(c)
print(answer)
//: [Next](@next)
