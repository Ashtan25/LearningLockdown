//: [Previous](@previous)

import Foundation

protocol Humanable {
    
    var name: String { get set }
    var race: String { get }
    func sayHi()
}

struct AshishTheDev: Humanable {
    var name: String = "Ashish"
    
    var race: String = "Indian"
    
    func sayHi() {
        print("My name is \(name) and I am \(race)")
    }
}

class American: Humanable {
    var name: String = "Jon Snow"
    
    var race: String = "American"
    
    func sayHi() {
        print("This is America")
    }
    
}

protocol SuperHumanable: Humanable {
    var canFly: Bool {get set}
    
    func punch()
}

struct Ash: SuperHumanable {
    var canFly: Bool = false
    var name: String = "Ashish"
    var race: String = "Indian"
    
    func punch() {
        print("I dont punch")
    }

    func sayHi() {
        print("My name is \(name) and I am \(race)")

    }
    
    
}

/*
 { get } or { get set } only apply to computed property. If a class has a stored property, you may choose either { get } or { get set }.

*/

// {get} vs {get set}

protocol Breathable {
    var isBreathing: Bool { get set }
    var isLiving: Bool { get }
}

struct Human:  Breathable {
    var isBreathing: Bool {
        get{
           return true
        }
        set {}
    }
    
    var isLiving: Bool {
        get {
           return true
        }
        set {}
    }
    
    
}


/*:
 
 {get}
 Stored Property (doesnt matter)
 Computed Property (gettable, settable(optional))
 
 {get set}
 Stored Property (doesnt matter)
 Computed Property (gettable, settable(must))
 
 */






//: [Next](@next)
