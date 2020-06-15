//: [Previous](@previous)

import Foundation

//PAST
struct Weekdays {
    private var days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    
     subscript(index: Int) -> String {
        return days[index]
      }

    }

let myDays = Weekdays()
myDays[1]

// Normal Subscript

//struct JSON {
//
//    private var storage: [String: Any]
//
//
//    init(dictionary: [String: Any]) {
//        self.storage = dictionary
//    }
//}
//
//let republicOfKorea = JSON(dictionary: [
//"capital": "Seoul",
//"name": "Republic of Korea",
//"population": 50000000
//])

//Generic Subscript

struct JSON {
    
    private var storage: [String: Any]
    
    
    init(dictionary: [String: Any]) {
        self.storage = dictionary
    }
    
    subscript<T>(key: String) -> T? {
        
        return storage[key] as? T
        
    }
}

let republicOfKorea = JSON(dictionary: [
"capital": "Seoul",
"name": "Republic of Korea",
"population": 50000000
])
let capital: String? = republicOfKorea["capital"]
let footSize: Int? = republicOfKorea["footSize"]














//: [Next](@next)
