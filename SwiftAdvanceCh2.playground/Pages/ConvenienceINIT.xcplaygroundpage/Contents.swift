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

//: [Next](@next)
