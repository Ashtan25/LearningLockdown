//: [Previous](@previous)

import Foundation


//Closures

/*
 Defination
    A closure is a function without a name and func keyword.
    Quick and easy to carry around as a variable/constant or pass as a parameter.
*/

func addTwoNumbers(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

var addFunction = addTwoNumbers
addFunction(10,30)

var addClosure: (Int, Int) -> Int = { ( number1: Int, number2: Int ) in
    print("Adding closure")
    return number1 + number2
        
}

addClosure(23,43)

// Short Form
var addClosureTwo = { (number1: Int, number2: Int) in
        
    return number1 + number2
    
}

addClosureTwo(53,21)

var addClosureThree = { (number1: Int, number2: Int) in
        
    number1 + number2
    
}
addClosureThree(32,54)

// Shortest Form
var addClosureFour: (Int, Int) -> Int = { $0 + $1 }

addClosureFour(32,68)


// Another Example


func callString() -> String {
  return "hello, I'm a function"
}



let callStringWtihClosure: () -> String = { () in
  print("hello")
  return "hello, I'm a closure"
}

callStringWtihClosure()

// Skip Return
let callStringWtihClosureTwo: () -> String = { () in
  "hello, I'm a closure"
}

// Type defined explicitly

let callStringWithClosureThree: () -> String = { "Hello closure string three"}

// Type defined implicitly

let callStringWithClosureFour = {"This is the shortest string"}
print(callStringWithClosureFour())






//: [Next](@next)
