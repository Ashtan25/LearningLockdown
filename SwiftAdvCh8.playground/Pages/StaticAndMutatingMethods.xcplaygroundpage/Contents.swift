//: [Previous](@previous)

import Foundation

enum Storyboard: String {
    case profile
    case setting
    case newsFeed
    
    var identifier: String {
    
        return self.rawValue
    }
    
}
let profile = Storyboard.profile
profile.identifier

func describeStoryboard(storyboard: Storyboard) -> String {
    
    switch storyboard {
    case .profile:
        return "\(storyboard.identifier): Profile Image"
    case .setting:
        return "\(storyboard.identifier): Dark Light"
    case .newsFeed:
        return "\(storyboard.identifier): Status Feeds"

    }
    
}

describeStoryboard(storyboard: .profile)



// Mutating Method

enum MealProcess: String {
    case breakfast, lunch, dinner
    
    var description: String {
        return self.rawValue
    }
    
    
    mutating func nextMeal() {
        print("Time to move on from \(self.description)")
        switch self {
        case .breakfast:
            self = .lunch
            print("I had a great Lunch")
        case .lunch:
            self = .dinner
            print("I had a great Dinner")
        case .dinner:
            self = .breakfast
            print("I had a great Breakfast")
            
        }
    }
}

var breakFast = MealProcess.breakfast
breakFast.nextMeal()
breakFast.nextMeal()
breakFast.nextMeal()



// Static method
//enum AppleDevices: String {
//     case iWatch, iMac, iPhone, MacPro
//
//
//    static func getAppleDevice(name: String) -> AppleDevices? {
//
//        switch name {
//        case "iWatch":
//            return .iWatch
//        case "iMac":
//            return .iMac
//        case "iPhone":
//            return .iPhone
//        case "MacPro":
//            return .MacPro
//        default:
//            return nil
//
//        }
//
//    }
//
//}
//
//let userProduct = AppleDevices.getAppleDevice(name: "iWatch")
//print(userProduct!)


// Short Form of Above Code

enum AppleDevices: String {
    case iWatch, iMac, iPhone, MacPro
    
    static func getProduct(name: String) -> AppleDevices? {
        return AppleDevices(rawValue: name)
    }
    
    static func getAppleDevice(enterName: String) -> AppleDevices? {
        
        switch enterName {
        case "iWatch", "iPhone", "iMac", "MacPro":
            return getProduct(name: enterName)
        default:
            return nil
        }
        
    }

}

AppleDevices.getAppleDevice(enterName: "iMac")

// Custom Init

enum AppleDevice: String {
    case iWatch, iPhone, iMac, MacPro
    
    init?(name: String) {
        if name == "iWatch" {
            self = .iWatch
        } else {
            return nil
        }
    }
    
    
    
}

AppleDevice(name: "iWatch")
AppleDevice(rawValue: "iWatch")

enum IntCategory: String {
    case small
    case medium
    case big
    case weird
    
    
    init(number: Int) {
        switch number {
        
        case 0..<1000:
            self = .small

        case 1000..<10000:
            self = .medium
            
        case 100000..<1000000:
             self = .big
        
        default:
             self = .weird
            
        }
    }

}

IntCategory(number: 10000)




// Practical Use

//: HTTP Request
enum HttpError: String {
  case Code400 = "Bad Request"
  case Code401 = "Unauthorized"
  case Code402 = "Payment Required"
  case Code403 = "Forbidden"
  case Code404 = "Page Not Found"

  var description: String {
    return self.rawValue
  }
}

HttpError.Code400.description


// Cell identifier

enum CellType: String {
  case ButtonValueCell
  case UnitEditCell
  case LabelCell
  case ResultLabelCell

  var name: String {
    return self.rawValue
  }
}

import UIKit

enum NavigationTheme {
  case Placid
  case Warning
  case Danger

  var barTintColor: UIColor {
    switch self {
    case .Placid: return UIColor.clear
    case .Warning: return UIColor.blue
    case .Danger: return UIColor.red
    }
  }
}

let colorSituation = NavigationTheme.Warning
colorSituation.barTintColor


extension NavigationTheme {
  init(numberOfTasks: Int) {
    switch numberOfTasks {
    case 0...3:
      self = .Placid
    case 4...9:
      self = .Warning
    default:
      self = .Danger
    }
  }
}

let currentColor = NavigationTheme(numberOfTasks: 10).barTintColor






















//: [Next](@next)
