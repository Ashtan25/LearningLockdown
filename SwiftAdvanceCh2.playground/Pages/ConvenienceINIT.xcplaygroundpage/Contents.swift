 //: [Previous](@previous)

import Foundation

class Ash {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "Ashish singh")
    }
}

let ash = Ash(name: "Ashish")
let newAsh = Ash()
print(newAsh.name)
print(ash.name)

// Real life situation
 let newRandomnColor = UIColor(displayP3Red: 80/255, green: 84/255, blue: 255/255, alpha: 1)
 import UIKit

 extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(displayP3Red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
 }
 
 let newColor = UIColor(r: 80, g: 84, b: 255)
 
 // Failable init
 
 class Blog {
    
    var name: String
    
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        
        self.name = name
    }
    
 }

 let ashBlog = Blog(name: "Ash")
 let blog = ashBlog?.name
 print(blog!)

 
 // Two phase init
 
 struct NuclearRocket {
    
    var meters: Double
    var liters: Double
    
    //init for Indian
    
    init(meters: Double, liters: Double) {
        self.meters = meters
        self.liters = liters
    }
    
    //init for American
    
    init(ft: Double, gallon: Double) {
        let convertedMeter = ft / 3.28
        let convertedLiters = gallon * 3.78
        
        self.init(meters: convertedMeter, liters: convertedLiters)
    }
    
    
    
 }
 
 let indianScientist = NuclearRocket(meters: 20, liters: 30)
 indianScientist.meters
 indianScientist.liters
 
 let americanScientist = NuclearRocket(ft: 4, gallon: 200)
 americanScientist.liters
 americanScientist.meters
//: [Next](@next)
