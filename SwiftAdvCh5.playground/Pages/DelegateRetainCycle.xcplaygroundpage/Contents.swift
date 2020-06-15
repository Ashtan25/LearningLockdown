//: [Previous](@previous)

import Foundation

protocol SendDataDelegate: class { }


class SendingVC {
    weak var delegate: SendDataDelegate?
    
    deinit {
        print("Delegate Gone")
    }
}

class RecievingVC: SendDataDelegate {
    
    lazy var sendingVC : SendingVC = {
        
        let vc = SendingVC()
        vc.delegate = self
        return vc
        
    }()
    
    deinit {
        print("Delegator Gone")
    }
    
}

var recievingVC: RecievingVC? = RecievingVC()
recievingVC?.sendingVC // lazy takes birth

recievingVC = nil


/*
 
 Rules
 1. A weak reference allows the referencing object to becoming nil (this happens automatically when the referenced object is deallocated).
 2. Based on the rule above, the referencing object/variable must be optional.
 
 */

//: [Next](@next)
