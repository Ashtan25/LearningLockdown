//: [Previous](@previous)

import Foundation

var radius : Int = 10

var diameter: Int {
    get {
        return radius * 2
    }
    
    set {
        radius = newValue/2
    }
}

radius
diameter
diameter = 40
radius

 
var side: Float = 100
var areaSquare: Float {
    
    get {
        return side * side
    }
    
    set {
        side = sqrt(newValue)
    }
}

areaSquare
areaSquare = 9
side


/*
Application
 - Grabbing and storing data on the server.(unchangeable)
 - Propogating relationship between properties.
 - Preventing others from manipulating your code.
*/



// Property observers

var myGrade: Int = 80 {
    willSet {
        print("About to change myGrade to \(newValue)")
    }
    
    didSet {
         print("Changed from \(oldValue) to \(myGrade)")
    }
}

myGrade = 100

var totalSteps: Int = 20 {
    willSet {
        print("About to set total steps to 50")
    }
    
    didSet {
        if totalSteps > oldValue {
            print("Added \(totalSteps - oldValue) steps")

        }
    }
}

totalSteps = 50


var isUserLoggedIn: Bool = false {
    
    willSet{
        print("User has done something")
    }
    
    didSet {
        if isUserLoggedIn {
            print("Changed value from \(oldValue) to \(isUserLoggedIn)")

        }
    }
}


isUserLoggedIn = true
isUserLoggedIn = true



//: [Next](@next)
