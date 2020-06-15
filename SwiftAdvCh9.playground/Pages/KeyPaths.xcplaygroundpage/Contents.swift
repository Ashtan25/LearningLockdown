//: [Previous](@previous)

import Foundation

struct Developer {
  var platform: Platform
  var information: Information
}

enum Platform {
  case iOS
  case android
}


struct Information {
  var name, strengths, motivation: String
}


let ashInfo = Information(name: "Ash", strengths: "Physique", motivation: "To excel in my field")
let ash = Developer(platform: .iOS, information: ashInfo)
ash.information.name




let ashPlatform = ash[keyPath: \Developer.platform]
let ashName = ash[keyPath: \Developer.information.name]

let informationKeyPath = \Developer.information
let ashInformation = ash[keyPath: informationKeyPath].name


let nameKeyPath = informationKeyPath.appending(path: \.name)
ash[keyPath: nameKeyPath] // "Ash"


//: [Next](@next)
