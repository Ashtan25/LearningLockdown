//: [Previous](@previous)

import Foundation
import UIKit

//Unconventional way to initialize

let box: UIView = {
    let view = UIView()
    view.backgroundColor = .blue
    return view
}()

let buttonSize = CGRect(x: 0, y: 0, width: 100, height: 100)

// ViewControllerOne
let ashButton = UIButton(frame: buttonSize)
ashButton.backgroundColor = .black
ashButton.titleLabel?.text = "Ash"
ashButton.titleLabel?.textColor = .white

// ViewControllerTwo
let ashishButton = UIButton(frame: buttonSize)
ashishButton.backgroundColor = .black
ashishButton.titleLabel?.text = "Ashish"
ashishButton.titleLabel?.textColor = .white


func createButton(enterTitle: String) -> UIButton {
    
    let button = UIButton(frame: buttonSize)
    button.backgroundColor = .black
    button.titleLabel?.text = enterTitle
    button.titleLabel?.textColor = .white
    return button
}

createButton(enterTitle: "Press to Proceed")

// Intoducing Unconventional Way

struct Human {
    init() {
        print("Born in 1996")
    }
}

let ash = { () -> Human in
    let human = Human()
    return human
    
}
let ashInstance = ash()

let ashView = { () -> UIView in
    let view = UIView()
    view.backgroundColor = .black
    return view
    
}()

let ashishView = { () -> UIView in
    let view = UIView()
    view.backgroundColor = .black
    return view
}()

let newAshishView: UIView = {
    let view = UIView()
    view.backgroundColor = .black
    return view
}()

// Lazy var

class IntenseMathProblem {
    
    lazy var complexNumber: Int = {
        1 * 1
    }()
}

let problem = IntenseMathProblem() //no initialization
print(problem.complexNumber)

class SortFromDataBase {
    // Data
    
    lazy var sortedData :  [Int] = {
        //Calculation and Sorting
        
        [1, 2, 3, 4, 5, 6, 7, 8]
        
    }()
}

//SortFromDataBase().sortedData



class CompressedImage {
    lazy var compressedUIImage: UIImage = {
        let image = UIImage()
        //Compress the image
        //Logic
        return image
    }()
    
}

/*

 1.You can’t use lazy with let since there is no initial value, and it is attained later when it is accessed.
 2.You can’t use it with a Computed property since computed property is always recalculated (requires CPU) when you modify any of the variables that has a relationship with the lazy property.
 3.lazy is only valid for members of a struct or class

 */











//: [Next](@next)
