//: [Previous](@previous)

import Foundation

enum FutureCourse {
    
    enum LearnSwiftWithBob: String {
   
        case genericProtocol
        case advancedEnum
    
        
        var chapterDescription: String {
                return self.rawValue
              }
    }
    
    enum UIKitFundamentals: String {
       case realmDatabase
       case noStoryboard
       case cloudComputing

       var chapterDescription: String {
         return self.rawValue
       }
     }
    
    
}

let course = FutureCourse.LearnSwiftWithBob.advancedEnum.chapterDescription
FutureCourse.UIKitFundamentals.cloudComputing.chapterDescription



// Game Design

struct Character {
    
    enum CharacterType{
        case prince
        case warrior
        case priest
    }
    
    enum Skills {
        case airwalk
        case transperancy
        case prediction
    }
    
    
    let type: CharacterType
    let skill: Skills
    
    
}
Character(type: .warrior, skill: .transperancy)


enum Wearable {
    
    
    enum Weight: Int {
        case light
        case medium
        case heavy
    }
    
    
    enum Price: Int {
        case leather
        case iron
        case steel
        
    }
    
    case armor(weight: Weight, price: Price)
    
   func getDescription() -> String {
        switch self {
            case let .armor(weight, price):
                return "You've chosen \(weight) and \(price)"
        
        }
    
    }
    
}

let myClothes = Wearable.armor(weight: .heavy, price: .steel)



//: [Next](@next)
