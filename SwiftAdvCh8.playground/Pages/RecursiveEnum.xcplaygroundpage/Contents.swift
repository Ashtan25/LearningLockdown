//: [Previous](@previous)

import Foundation

indirect enum ArithmeticExpression {
    case number(value: Int)
    case Addition(ArithmeticExpression, ArithmeticExpression)
    case Multiplication(ArithmeticExpression, ArithmeticExpression)

    
}

ArithmeticExpression.number(value: 4)


func evaluate(_ expression: ArithmeticExpression) -> Int {
    
    switch expression {
    case let .number(value):
        return value
   
    case let .Addition(left, right):
        return evaluate(left) + evaluate(right)
    
    case let .Multiplication(left, right):
        return evaluate(left) * evaluate(right)
        
    }
    
}

evaluate(.Addition(.number(value: 45), .number(value: 32)))


enum Operation {
    
    case Addition(Int, Int)
    case Multiplication(Int, Int)
    
    var result: Int {
        
        switch self {
        case let .Addition(left, right):
            return left + right
        
        case let .Multiplication(left, right):
        return left * right
       
        }
        
        
    }
    
}



Operation.Multiplication(32, 43).result



// Struct for the same task
struct StructOperation {
  func addTwoNumbers(_ number1: Int, _ number2: Int) -> Int {
    return number1 + number2
  }
  func multiplfyNumbers(number1: Int, number2: Int) -> Int {
    return number1 * number2
  }
}



StructOperation().addTwoNumbers(4, 9)


// The best as per me

struct MathOperation {
  static let addition: (Int, Int) -> Int = { $0 + $1 }
  static let multiplication: (Int, Int) -> Int  = { $0 * $1 }
}

MathOperation.addition(10, 10) // 20














//: [Next](@next)
