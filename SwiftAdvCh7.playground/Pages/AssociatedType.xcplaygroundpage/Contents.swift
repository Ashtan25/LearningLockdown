//: [Previous](@previous)

import Foundation


protocol GenericProtocol {
    
    associatedtype anyType
    var property: anyType { get set }
    
}

// Define Associated Type

struct MyStruct: GenericProtocol {
    var property = "String"
}

struct MyIntStruct: GenericProtocol {
    var property = 12
}


//Define Associated Type with Typealias

struct MyNormalStruct: GenericProtocol {
    
    typealias anyType = Bool
    var property = true
}


// Override Associated Type

protocol FamilyProtocol {
    associatedtype familyType = Int
    
    var familyMembers: [familyType] {get set}
}


class NumberFamily: FamilyProtocol  {
    
    var familyMembers: [Int] = [1, 2, 3]
}

let someClass = NumberFamily()
someClass.familyMembers


class StringFamily: FamilyProtocol {
    typealias familyType = String
    
    var familyMembers: [String] = ["Ash", "Singh", "Ashish"]
    
}

//Override Associated Type With Generic Struct

struct AshFamily<T>: FamilyProtocol {
    typealias familyType = T
    var familyMembers: [T] = []
    
}

let ash = AshFamily(familyMembers: ["Ash", "Someone"])
let ashNumber = AshFamily(familyMembers: [1, 2, 3, 4])
ash.familyMembers
ashNumber.familyMembers










//: [Next](@next)
