//: [Previous](@previous)

import Foundation



//Imperative/Non-Functional
var numberOne = Int()

for number in Array(1...10) {
  numberOne += number
}

numberOne // 55

var numberTwo = Int()

for number in Array(1...10) {
    numberTwo -= number
}

numberTwo // -55



// Declarative Programming / Functional way

print(Array(1...10).reduce(0) { $0 + $1 })


func myReduce(_ seed: Int, numbers: [Int], operation: (Int, Int) -> Int) -> Int {
    
    var current = seed
    for number in numbers {
        
       current = operation(current, number)
        
    }
    return current
}

print(myReduce(0, numbers: Array(1...10)) { $0 + $1 })



// Generic Way
func myReduceGeneric<T>(_ seed: T, array: [T], operation: (T, T) -> T) -> T {
    
    var current = seed
    for element in array {
        
       current = operation(current, element)
        
    }
    return current
}

var stringArray: [String] = ["Ashish", "Singh", "iOS"]
print(myReduceGeneric("Name:", array: stringArray, operation: {"\($0) " + $1 } ))


// Purest Form

extension Array {
    
    func myPureReduce(_ seed: Element, operation: (Element, Element) -> Element) -> Element {
        
        var current = seed
        for item in self {
            current = operation(current, item)
        }
        
        return current
        
    }
    
    
    
}

print(Array(1...10).myPureReduce(1, operation: {$0 * $1}))
print(stringArray.myPureReduce("Intro:") {"\($0) " + $1})





//: [Next](@next)
