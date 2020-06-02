//: [Previous](@previous)

import Foundation

class Blog {
    var description: String {
    return "Hello, This is my first Blog"
    }
    
    func deleteBlog() {
        print("Blog deleted")
    }
}



// Override method and property

class AshBlog: Blog {
   
    override var description: String {
        return super.description + " and I am really excited."
    }

    override func deleteBlog() {
        print("Lets delete this")
        super.deleteBlog()
    }
    
    
}
print(AshBlog().description)
print(AshBlog().deleteBlog())

// Super.init

class Human  {
    var origin: String
    
    init(enterOrigin: String) {
        origin = enterOrigin
    }
}

Human(enterOrigin: "Indian")


class Indian: Human {
    var city: String
    
    init(enterCity: String) {
        self.city = enterCity
        super.init(enterOrigin: "Indian")

    }
    
    init(enterCity: String, origin: String) {
        self.city = enterCity
        super.init(enterOrigin: origin)
    }
}

let ash = Indian(enterCity: "Varanasi")
ash.city
ash.origin

let ashish = Indian(enterCity: "Noida", origin: "India")
ashish.city
ashish.origin


//override init

class Tesla {
    var numberOfWheels: Int
    
    init(enterNUmberOfWheels: Int) {
        self.numberOfWheels = enterNUmberOfWheels
    }
}

class ModelS: Tesla {
    
    override init(enterNUmberOfWheels: Int) {
        super.init(enterNUmberOfWheels: enterNUmberOfWheels)
        print("Wow what a car")
    }
    
}


let newCar = ModelS(enterNUmberOfWheels: 50)
print(newCar.numberOfWheels)


//: [Next](@next)
