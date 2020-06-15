//: [Previous](@previous)

import Foundation

class AccountManager {
   
    static let sharedInstance = AccountManager()
    
    var userInfo = (ID: "AshTheDev", password: 2343923)
    
    private init() {
        print("I am created")
    }
    
    
}
AccountManager.sharedInstance.userInfo.ID
AccountManager.sharedInstance.userInfo.ID = "AshishSingh"
AccountManager.sharedInstance.userInfo.ID



//: [Next](@next)
