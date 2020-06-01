import UIKit

// Design Error
enum HeightError: Error {
    case maxHeight
    case minHeight
}
// Design call fucntion
// throws keyword will also denote other developers that this function is dangerous use it wisely as it throws error
func heightCheck(height: Int) throws {
    if height > 200 {
        throw HeightError.maxHeight
    }
    if height < 140 {
        throw HeightError.minHeight
    } else {
        print("Enjoy")
    }
}

// Call and catch errors
do {
    
   try heightCheck(height: 200)
} catch HeightError.maxHeight {
    print("You are too tall")
} catch HeightError.minHeight {
    print("You are too short")
}

//If too sure for the outcome or else it will crash the app
try! heightCheck(height: 170)

//If you are okay with nil if error is thrown
try? heightCheck(height: 100)


enum NoName: Error {
    case noName
}
// Error handling with initializer
class RollerCoaster {
    
    var name: String
    
    init(name: String) throws {
        if name == "" {
            throw NoName.noName
        } else {
            print("Name is there")
            self.name = name
        }
    }
    
}

do {
    
    _ = try RollerCoaster(name: "Ashish")
} catch NoName.noName {
    print("You forgot to enter your name")
}
