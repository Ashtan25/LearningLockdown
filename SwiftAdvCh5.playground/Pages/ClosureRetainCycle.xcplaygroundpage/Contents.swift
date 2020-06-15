//: [Previous](@previous)

import Foundation

class AshClass {
    
    var ashClosure: (() -> ())?
    var name: String = "Ashish"
    
    init() {
        ashClosure = { [weak self] in
            guard let object = self else {
                return
            }
            print("\(object.name) the developer")

        }
    }
    
    deinit {
        print("Ash Class is gone")
    }
}

var ash: AshClass? = AshClass()
ash?.ashClosure?()

ash = nil



// Unowned

class Owner {
    var creditCard: CreditCard?
    deinit {
        print("Owner is Gone")
    }
}


class CreditCard {
    unowned let owner: Owner
    
    init(enterOwner: Owner) {
        owner = enterOwner
    }
    
    deinit {
        print("CreditCard is gone")
    }
    
}


var ashish: Owner? = Owner()
var myCard: CreditCard = CreditCard(enterOwner: ashish!)
ashish?.creditCard = myCard

ashish = nil
//myCard.owner Throws the error: Fatal error: Attempted to read an unowned reference but object 0x6000009561a0 was already deallocated


//Based on the definition of unowned, it must have a non-nil reference to the object. Since the Owner object has been deallocated, it crashes.

















//: [Next](@next)
