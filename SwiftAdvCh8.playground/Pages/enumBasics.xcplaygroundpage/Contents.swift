//: [Previous](@previous)

import Foundation

// Basic Enumeration

enum Compass {
    
    case North
    case East
    case West
    case South
    
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let earth = Planet.earth
print(earth)


switch earth {
case .earth:
    print("It is safer here")
default:
    print("Not a safe place for me")
}


// Raw Value
/*:
 
 Integer
 Float
 String
 Bool
 
 
 */

enum Food: String {
    case pizza
    case burger
    case banana
    case chicken
    case bigMac

}

let stringValueFromPizza = Food.pizza.rawValue
print(stringValueFromPizza) // pizza

enum Days: Int {
  case mon, tue, wed, thu, fri = 10, sat, sun
}
// mon = 0, tue = 1, wed = 2, ... , fri = 10, sat = 11

let myDay = Days.fri.rawValue
print(myDay) // 10




// Initialization From raw Value


let someDay = Days(rawValue: 10)
print(someDay!)

if let someDay = Days(rawValue: 11) {
    switch someDay {
    case .sat, .sun:
        print("Weekends!!")
    default:
        print("Weekdays!")
    }
}  else {
       print("There is no such day")
   }


// Associated Value

enum Barcode {
    case upcCode(Int, Int, Int, Int)
    case qrCode(String)
}

var qrCode = Barcode.qrCode("XYZ")
var upcCode = Barcode.upcCode(4, 5, 2, 2)

let code = upcCode

//switch code {
//case .qrCode(let productCode):
//    print("This is your qrCode: \(productCode)")
//case .upcCode(let numberSystem, let manufacturer, let product, let check):
//    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
//}

// The Other Way round

switch code {
case let .upcCode(numberSystem, manufacturer, product, check):
  print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
  print("QR code: \(productCode).")
}














































//: [Next](@next)
