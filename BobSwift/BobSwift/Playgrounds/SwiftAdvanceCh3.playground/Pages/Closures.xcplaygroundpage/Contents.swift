//: [Previous](@previous)

import Foundation

let closureOne: (Int, Int) -> Int = { (number1: Int, number2: Int) in
    
    return number1 + number2

}

print(closureOne(32,68))

let closureTwo = { (number1: Int, number2: Int) in
    return number1 + number2
    
}

print(closureTwo(23, 74))

//: [Next](@next)
