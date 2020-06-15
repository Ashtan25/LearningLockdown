//: [Previous](@previous)

import Foundation

// Scenario 1

var closureArray: [() -> Void] = []

func closureArrayAppend(closure : @escaping () -> Void) {
    closureArray.append(closure)
    print("function done")
}
//The @escaping keyword is added since the closure can be called after the function returns/executes.


// Scenario 2

func funcWithClosureNetworking(closure: @escaping () -> Void) {
    DispatchQueue.global().async {
        closure() // Ex Downloading
    }
    print("Funtion Networking Done")
    
}


//funcWithClosureNetworking {
//    for _ in 1...100 {
//        print("Downloading....")
//    }
//}


class Normal {
    let name = "Ashish"
    
    func normalFunctionWithClosure(closure: (String) -> Void) {
        closure(self.name)
    }
    
}

Normal().normalFunctionWithClosure { (myName) in
    print(myName)
}

/*
When you execute the function, the closure block is initialized and deallocated as the function returns. The function also gets deallocated. It happens almost simultaneously. If the function is @escaping, however, the closure block is not deallocated while the function block is.


 Benefits of Non-Escaping
    1.There is no retain cycle for non-escaping functions since everything is deallocated
    2.You may use self keyword without worrying about memory leak
    3.Performance and the ability for the compiler to optimize

 */

// AutoClosure


func checkIDCard(hasCard: @autoclosure () -> Bool) {
    if hasCard() {
        print("You have a ID card")
    }

}
//checkIDCard { () -> Bool in
//    return true
//}
//checkIDCard(hasCard: { true })
//checkIDCard(hasCard: {return true})

checkIDCard(hasCard: true)

//The @autoclosure keyword allows you to pass a closure block with no brackets.

// lazy init capture

class AshLazy {
    var name = "Ashish"
    
    lazy var greeting: String =  {
        return "Hello my name is \(self.name)"
    }()
    
    deinit {
        print("I am gone I was Lazy")
    }
}

var ash: AshLazy? = AshLazy()
ash?.greeting

ash = nil

//Important: a closure block with a lazy property is @non-escaping by default.






















//: [Next](@next)
