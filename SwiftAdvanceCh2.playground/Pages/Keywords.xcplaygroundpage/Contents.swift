//: [Previous](@previous)

import Foundation

// static, final and class

struct SomeStruct {
    
    
    
    static var anyNumber: Int = 30
    
    static var computedProperty: Int {
        get {
            return 45
        }
    }
    static func introduce() {
        
        print("Hello Everybody")
    }
}


SomeStruct.anyNumber
SomeStruct.computedProperty
SomeStruct.introduce()


class GrandParent {
    
    static var age: Int = 45
    
    static func beenTogetherFor() {
        print("We have been together for \(age) years")
    }
    
    class func introduction() {
        print("with class Keyword")
    }
    
    final func finalIntro() {
        print("Cant override")
    }
    
    func something()  {
        
    }
    
    
    
}


class Parent: GrandParent {
    
//    override static func beenTogetherFor() {
//        print("Trying.....")
//    }
    
//    override class func introduction() {
//        print("Trying.....")
//    }
    
//    override final func finalIntro() {
//
//        print("Trying...")
//    }
    override func something() {
        print("Overriden")
    }
    
    
}
GrandParent.beenTogetherFor()
GrandParent.age
GrandParent.introduction()
GrandParent() .finalIntro()
//: [Next](@next)
