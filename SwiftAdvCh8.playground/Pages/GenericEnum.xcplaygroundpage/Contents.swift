//: [Previous](@previous)

import Foundation

enum Information<T, U> {
    case name(T)
    case website(T)
    case age(U)

}

print(Information<String, Int>.name("Ash"))


enum MyOptional<T> {
    case none
    case some(T)
    
    
    init(_ anyValue: T) {
        self = MyOptional.some(anyValue)
    }
}

let some = MyOptional("Ashish")

//if let value = MyOptional("Ashish") {
//  print(value)
//} // Error

// some!











//: [Next](@next)
