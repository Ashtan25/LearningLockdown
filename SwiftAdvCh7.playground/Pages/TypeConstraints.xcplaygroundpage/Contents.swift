//: [Previous](@previous)

import Foundation

// Review
class Lol{}

func addLOLClassOnly<T: Lol>(array: [T]) {
    
    
}

addLOLClassOnly(array: [Lol(), Lol()])



// Generic Protocol

protocol someProtocol {
    associatedtype myType
}

class SomeClass: someProtocol {
    typealias myType = String
    
}

struct SomeStruct: someProtocol {
    typealias myType = Int
}


extension someProtocol where myType == String {
    static func introduce() {
        print("Hello there")
    }
}
SomeClass.introduce()

extension someProtocol where Self == SomeStruct {
    static func onlyForStruct() {
        print("I am a struct")
    }
}

SomeStruct.onlyForStruct()

























//: [Next](@next)
