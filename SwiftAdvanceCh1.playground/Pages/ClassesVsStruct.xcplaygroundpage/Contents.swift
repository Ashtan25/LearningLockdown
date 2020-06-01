//: [Previous](@previous)

import Foundation

class AshClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
}

let ashClass = AshClass(name: "Ashish")
let newAshClass = ashClass
newAshClass.name = "Ashish Singh"
print(ashClass.name)
print(newAshClass.name)

struct AshStruct {
    var name: String
}

let ashStruct = AshStruct(name: "Ashish")
var newAshStruct = ashStruct
newAshStruct.name = "Ashish Singh"
print(ashStruct.name)
print(newAshStruct.name)

