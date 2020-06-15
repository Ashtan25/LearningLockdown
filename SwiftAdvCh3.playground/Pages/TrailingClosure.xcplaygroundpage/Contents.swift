//: [Previous](@previous)

import Foundation

var closureNormal : () -> () = {
    print("Hello how are you")
    
}

func passClosure(number: Int, closure: () -> ()) {
    
    print("The number you have entered is \(number)")
    closure()
    
}

passClosure(number: 100, closure: closureNormal)
passClosure(number: 200) {
    print("Nothing new its direct")
}


//Another Example

func trailingClosure(number: Int, closure: (Int) -> Int ) {
    
    
    let closureInFunc = closure(number)
    print(closureInFunc)
}

//Without trailing closure

trailingClosure(number: 100, closure: { number in number * number})

// With trailing closure

trailingClosure(number: 25) { (number1) -> Int in
    number1 * number1
}

func trailingAnotherClosure(number1: Int, number2: Int, closure: (Int, Int) -> Int) {
    let newClosureAnswer = closure(number1, number2)
    print(newClosureAnswer)
}

trailingAnotherClosure(number1: 32, number2: 23) { $0/$1 } 


//: [Next](@next)
