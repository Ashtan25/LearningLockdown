//: [Previous](@previous)

import Foundation

struct User: Codable {
    var name: String
    var loginMethods: [LoginMethods]
    var numberOfFriends: Int
    
    enum LoginMethods: String, Codable {
        case facebook, instagram, twitter, linkedin
    }
}


let ash = User(name: "Ashish", loginMethods: [.linkedin, .twitter], numberOfFriends: 100)

// Encode Object to JSON

let jsonEncoder = JSONEncoder()

jsonEncoder.outputFormatting = .prettyPrinted
jsonEncoder.dataEncodingStrategy = .base64

var data: Data?

do {
    
    let jsonData = try jsonEncoder.encode(ash)
    data = jsonData
    
    let jsonString = String(data: jsonData, encoding: .utf8)
    print("JSON String: " + jsonString!)
 
}catch(let error) {
    print(error)
}


//Decode JSON to Object

let decoder = JSONDecoder()

do {
    
    let ashish = try decoder.decode(User.self, from: data!)
    print("Name:" + ashish.name)
    print("Number Of Friends: \(ashish.numberOfFriends)")
    
}catch(let error) {
    print(error)
}



//: [Next](@next)
