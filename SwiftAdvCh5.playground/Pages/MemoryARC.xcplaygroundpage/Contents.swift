//: [Previous](@previous)

import Foundation

class Passport {
    
    var human: Human?
    var citizenship: String
    
    init(citizenship: String) {
        self.citizenship = citizenship
        print("I am Passport and I am created")
    }
    
    deinit {
        print("I am Passport I am gone")
    }
    
    
}

class Human {
    
    weak var passport: Passport?
    let name: String
    
    init(name: String) {
        self.name = name
        print("I am \(name) and I am created")
    }
    
    deinit {
        print("I am \(name) but I am gone")
    }


}

//Passport(citizenship: "India")
var myPassport: Passport? = Passport(citizenship: "India")
var ash: Human? = Human(name: "Ashish")





// Discover Retention Cycle

ash?.passport = myPassport
myPassport?.human = ash



ash = nil
myPassport = nil






//: [Next](@next)


