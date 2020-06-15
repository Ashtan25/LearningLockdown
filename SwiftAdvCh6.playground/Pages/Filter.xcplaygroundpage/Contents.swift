//: [Previous](@previous)

import Foundation


// Non Functional/ Imperative


var evenNumbers: [Int] = []


for i in 1...10 {
    if i % 2 == 0 {
        evenNumbers.append(i)
    }
}
//print(evenNumbers)


// Functional / Declarative

//print(Array(1...10).filter { $0 % 2 == 0})


var recentGrades: [String] = ["A", "A", "B", "A", "D", "A", "B", "A"]

var happyGrades: [String] = []

// Imperative/ Non Functional


for grade in recentGrades {
    if grade == "A" {
        happyGrades.append(grade)
    } else {
      //  print("Not worth it")
    }
}
//print(happyGrades)

var filterClosure: (String) -> Bool = { myGrade in return myGrade == "A" }

func simpleStringFilter(grades: [String], operation: (String) -> Bool) -> [String] {
    var newHappyGrades: [String] = []
    for grade in grades {
        if operation(grade) {
            newHappyGrades.append(grade)
        } else {
            print("Mom is not happy")
        }
    }
    
    return newHappyGrades
    
    
}

//print(simpleStringFilter(grades: recentGrades, operation: filterClosure))
//print(simpleStringFilter(grades: recentGrades, operation: { $0 == "B" }))
//simpleStringFilter(grades: recentGrades) {$0 == "D"}



// Generic

func genericFilter<T>(array: [T], operation: (T) -> Bool) -> [T] {
    var result: [T] = []
    for element in array {
        if operation(element) {
            result.append(element)
        }
    }
    return result
}

var arrayOfNumbers: [Int] = Array(1...100)

print(genericFilter(array: arrayOfNumbers) { $0 > 93 && $0 <= 100 })
print(genericFilter(array: recentGrades, operation: {$0 == "A"}))
print(genericFilter(array: Array(200...300), operation: {$0 % 5 == 0}))


// Built in Swift Filter

let zeroToHund = 0...100
print(zeroToHund.filter { $0 % 2 == 0 }.filter { $0 > 50})


// Purestn Form of our filter

extension Array {
      
    func myFilter(_ logic: (Element) -> Bool) -> [Element] {
        var result: [Element] = []
        for item in self {
          if logic(item) {
            result.append(item)
          }
        }
        return result
      }
    }
    

print(arrayOfNumbers.myFilter {$0 > 93})



























//: [Next](@next)
