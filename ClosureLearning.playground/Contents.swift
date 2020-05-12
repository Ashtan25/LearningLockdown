import UIKit

let driving = {
    print("I am driving")
}
driving()

//With parameter

let drivingWithParameter = { (place: String) in
    print("I am going \(place) with my car")
}
drivingWithParameter("Varanasi")

let drivingWithReturn = { (place: String) -> String in
    return "I am going \(place) with my car"
}
print(drivingWithReturn("Noida"))

//Closure as Parameter
func closureReturn(action: () -> Void) {
    print("I am ready to go")
    action()
    print("I have reached")
}
closureReturn(action: driving)

//Trailing Closure

closureReturn {
    print("Hello")
}

//Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("Where to go")
    action("London")
    print("Lets go")
}
travel { (place: String) in
    print("Lets go to \(place)")
    
}
//Using closures as parameters when they return values

func travelsome(action: (String) -> String) {
    print("Where to go")
    let description = action("London")
    print(description)
    print("Lets go")
}
travelsome { (place: String) -> String in
    return "Lets go to \(place) via car "

}
// Shorthand syntax for the above
//We dont need to say place is string
//We dont need to write return as Swift already knows value will return
// swift also gives auto parameter name by writing $0
travelsome {
    "Lets go to \($0) via car(shorthand)"
}

// Closure with multiple parameter
func closureMulPara(action: (String, Int) -> String) {
    print("Where to go")
    let description = action("Varanasi", 50)
    print(description)
    print("Lets Go")
}
closureMulPara {
    "Lets go \($0) via car at \($1)"
}

// Returning closure from functions

func travelWithReturn() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter) I'm going to \($0)")
        counter += 1
    }
}
let result = travelWithReturn()

// Capturing values
result("Laxmi nagar")
result("Laxmi nagar")
result("Laxmi nagar")
result("Laxmi nagar")


// protocol Extension

let python = ["Ash","Anuranjan","akash","Jasmeet"]
let beatles = Set(["Ash","Anuranjan","akash","Jasmeet"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        for name in self {
            print(name)
        }
    }
}

python.summarize()
beatles.summarize()

