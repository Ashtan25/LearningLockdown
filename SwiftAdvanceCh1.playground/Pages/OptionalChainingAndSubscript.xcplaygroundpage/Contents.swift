//: [Previous](@previous)

import Foundation

class Human {
    
    var name:String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hello! my name is \(name)")
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

// Subscript
struct WeekDays {
    let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    
    subscript(index: Int) -> String {
        return days[index]
    }
}
let myDays = WeekDays()
myDays[0]



struct Health {
    var info = ["Height" : 183, "Weight" : 83.7, "Body Fat" : 12]
    
    subscript(key: String) -> Double {
        if let newInfo = info[key] {
            return newInfo
        } else {
            return 0
        }
    }

}

let ashInfo = Health()
ashInfo["Height"]
ashInfo["Colour"]
//: [Next](@next)
