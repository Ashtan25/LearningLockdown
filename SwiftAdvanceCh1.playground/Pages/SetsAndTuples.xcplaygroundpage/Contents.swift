//: [Previous](@previous)

import Foundation

var set = Set([1,34,23,1,42,54213,45,12,31,1])
var anotherSet = Set([1,55,23,1,42,56,45,12,34,1])
anotherSet.subtract(set)
set.union(anotherSet)

var oneTuple = (name: "Ash", number: 233)
print(oneTuple.0)
print(oneTuple.1)

var (x, y, z) = ("ashish", 23, 12.9)
print(x)
print(y)
print(z)

struct Ash {
    
   var name = "Ashish"
   var skill = "Work"
    
    init() { }
}


extension Ash {
    var description: String {
        let myName = self.name
        let mySkill = self.skill
        
        return "I am \(myName) and I do \(mySkill)"
    }
    
    init(newSkill: String) {
        self.skill = newSkill
        print("You have entered a new skill")
        
    }
    subscript(myskill: String) -> String {
        return "This is my secret weapon \(myskill)"
    }
}

let ash = Ash(newSkill: "Swift 5")
//print(ash.description)
print(ash["ios 13"])



extension Int {
    var square: Int {
        return self * self
    }
}
let number = 23

print(number.square)

/*
In extension you dont have any stored properties

 Extensions in Swift
 - Add computed instance properties and computed type properties.
 - Define instance methods and type methods
 - Provide new initializers
 - Define subscripts
 - Define and use new nested types with enum/struct.
 - Make an existing type conform to a protocol.
 
*/
//: [Next](@next)
