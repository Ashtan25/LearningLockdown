//: [Previous](@previous)

import Foundation

class Human {
    func introduce() {
        print("Hello I am trying to teach you guys Typecasting")
    }
    
}

class Indian: Human {
    func relegious() {
        print("Om Namah Shivay")
    }
}

class Buddhist: Human {
    func monk() {
        print("budham sharanam gachami")
    }
}

let ash = Indian()
ash.introduce()
ash.relegious()

//Upcasting

let newAsh = ash as Human

// Downcasting as? and as!

var number = 20 as Any
var name = "Ashish" as Any

var anyArray = [name, number]
// Safe Downcasting
let newValue = anyArray[0] as? Int
//Crash on force casting
//let newNewValue = anyArray[0] as! Int

let newName = anyArray[0] as? String
let newNewName = anyArray[0] as! String


let ashtan = Indian()
let lee = Buddhist()
let wang = Buddhist()

let humans: [Human] = [ash, ashtan, lee, wang]

for person in humans {
    if let indian = person as? Indian {
        indian.relegious()
    }
    if let buddhist = person as? Buddhist {
        buddhist.monk()
    }
}
