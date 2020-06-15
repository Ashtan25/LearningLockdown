//: [Previous](@previous)

import Foundation

//Implicit Way or Non functional

var squaredNumber: [Double] = []

var numbers = [1.0, 2.0, 3.0, 4.0, 5.0]

for number in numbers {
    squaredNumber.append(number * number)
}

print(squaredNumber)

// Functional Way

func squarNumberFunction(numbers: [Double]) -> [Double] {
   
    var squaredNumber: [Double] = []
    
    for number in numbers {
        squaredNumber.append(number * number)
    }
    return squaredNumber
}

print(squarNumberFunction(numbers: numbers))

// The Built in Map Function

print(numbers.map { $0 * $0})

//Non Generic Map

func myMap(numbers: [Double], operation: (Double) -> Double) -> [Double] {
    
    var result: [Double] = []
    
    for number in numbers {
        let transformedValue = operation(number)
        result.append(transformedValue)
    }
    
    return result
    
}

print("myMap Non Generic \(myMap(numbers: numbers) {$0 * $0})")



// Slightly Generic Map

func slightlyGenericMap<T>(array: [T], operation: (T) -> T) -> [T] {
    
    var result: [T] = []
       
       for element in array {
           let transformedValue = operation(element)
           result.append(transformedValue)
       }
       
       return result
        
}

var arrayOfString = ["ASH", "BOB", "BUILDER"]
print(slightlyGenericMap(array: arrayOfString, operation: {$0.lowercased()}))


func lowercase(enterString: String) -> String {
  return enterString.lowercased()
}
print(slightlyGenericMap(array: arrayOfString, operation: lowercase))

// Extremely Generic Map Function

func convertNumberToString(number: Int) -> String {
  return "You are number \(String(number))"
}

func extremelyGenericFunction<T, U>(array: [T], operation: (T) -> U) -> [U] {
    var result: [U] = []
    for element in array {
        let transformedValue = operation(element)
        result.append(transformedValue)
    }
    
    return result
    
}


let myNumbers = [1, 2, 3, 4, 5]
print(extremelyGenericFunction(array: myNumbers, operation: {String($0)}))
print(extremelyGenericFunction(array: myNumbers, operation: convertNumberToString))


// Purest Form

extension Array {
    
    func myMap<U>(_ operation: (Element)-> U) -> [U] {
        
        var result: [U] = []
        
        for element in self {
            
            let transformedValue = operation(element)
            result.append(transformedValue)
        
        }
        
        return result
        
    }
    
}

print(Array(1...10).myMap {$0 * $0 * $0})























 
































//: [Next](@next)
