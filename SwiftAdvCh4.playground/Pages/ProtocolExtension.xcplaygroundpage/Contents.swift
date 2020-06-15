//: [Previous](@previous)

import Foundation

protocol MathsGenius {
    func calculateGPA()
}

extension MathsGenius {
    
    func calculateGPA() {
        print("I dont wanna graduate")
    }
    
}

class Someone: MathsGenius {
    
    func calculateGPA() {
        print("1 GPA")
    }
    
}
Someone().calculateGPA()

// Another Example

protocol FindAreable{
    func calculateArea(sides: Int, length: Int) -> String
}

extension FindAreable{
    func calculateArea(sides: Int, length: Int) -> String {
        return "The area is \(sides * length)"
    }
}


struct Square: FindAreable {}
struct Hexagon: FindAreable {}
Square().calculateArea(sides: 4, length: 10)
Hexagon.init().calculateArea(sides: 6, length: 12)
























//: [Next](@next)
