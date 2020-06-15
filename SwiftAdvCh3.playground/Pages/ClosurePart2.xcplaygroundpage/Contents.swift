//: [Previous](@previous)

import Foundation

var addClosure: (Int, Int) -> Int = { (number1: Int, number2: Int) in
    return number1 + number2
}

var returnString: () -> String = { () in
    "Hello"
}
let returnedValue = returnString()


// Swift Functions are called Global Closures

// Create a function that returns a closure

func returnClosure() -> (Int, Int) -> Int {
    return addClosure
}
let addedClosure = returnClosure()
print(addedClosure(34,54))



func returnClosureDirectly() -> (Int, Int) -> Int {
    return {
        
        (number1, number2) in
        return number1 + number2
    }
}
let addedClosureDirectly = returnClosureDirectly()
addedClosureDirectly(2,2)


func returnClosureDirectlyTwo() -> ((Int, Int) -> Int) {
  return { $0 + $1 }
}
returnClosureDirectlyTwo()(4, 10) // 14

// Pass Closure Indirectly

func insertClosureBlock(closureBlock: () -> String) -> String {
    return closureBlock()
}

func hello() -> String {
    "hello"
}

insertClosureBlock(closureBlock: hello)

// Pass Closure Directly

insertClosureBlock(closureBlock: {() in return "Hello"})
insertClosureBlock(closureBlock: { return "Hello"})
insertClosureBlock(closureBlock: {"Hello"})
























//: [Next](@next)
