//: [Previous](@previous)

import Foundation

protocol EastAsianable {
    
    var useChopsticks: Bool { get }
    var origin: String { get }
    
}

extension EastAsianable {
    var useChopsticks: Bool {
        return true
    }
}

struct Korean: EastAsianable {
    var origin: String = "Korean"
}

struct Japanese: EastAsianable {
    var origin: String = "Japanese"
}

struct Chinese: EastAsianable {
    var origin: String = "Chinese"
}

let eastAsians : [EastAsianable ] = [Chinese(), Korean(), Japanese()]

for eastAsian in eastAsians {
    print(eastAsian.origin)
}


// Protocol Meet Generics

protocol Sleekable {
    var price: String { get }
}

struct Diamond: Sleekable {
    var price: String = "Very High"
}

struct Ruby: Sleekable {
    var price: String = "High"
    
}

struct Glass: Sleekable {

    var price: String = "Dirt Cheap"
}


func stateThePrice<T: Sleekable>(enterGem: T) {
    
    print("I am expensive. Infact I am \(enterGem.price)")
    
}

stateThePrice(enterGem: Glass())
stateThePrice(enterGem: Ruby())
stateThePrice(enterGem: Diamond())





















































//: [Next](@next)
