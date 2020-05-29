//: [Previous](@previous)

import Foundation

class Human {
    
    var name:String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello! my name is\(name)")
    }
    
    
}

class Apartment {
    
    var human: Human?
    
}

let ashApartment = Apartment()
ashApartment.human?.sayHello()

let ashishApartment = Apartment()
ashishApartment.human = Human(name: "Ashish")
ashishApartment.human?.sayHello()
//: [Next](@next)
