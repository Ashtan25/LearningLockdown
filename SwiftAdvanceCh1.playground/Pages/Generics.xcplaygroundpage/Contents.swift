
import Foundation

let name = ["Bob", "Ash", "Jonty", "Prashant"]
let doubleNumber = [1.0, 34.0, 45.3]
let intNumber = [4,45,23,62]

func genericIteration<T>(value: [T]) {
    for element in value {
        print(element)
    }
}

genericIteration(value: name)
genericIteration(value: doubleNumber)
genericIteration(value: intNumber)

struct Family<T> {
    var members: [T] = []
    
    mutating func push(member: T) {
        members.append(member)
    }
}

var newFamily = Family<String>()
newFamily.push(member: "Lee wong")
newFamily.push(member: "Lee")
newFamily.push(member: "wong")

print(newFamily.members)

extension Family {
    var firstElement: T? {
        if members.isEmpty{
            return nil
        } else {
            return members[0]
        }
    }
}
newFamily.firstElement

class LOL {}

class BabyLol: LOL {}

func addLOLClassOnly<T: LOL>(array: [T]){}

addLOLClassOnly(array: [BabyLol(), LOL(), BabyLol()])
//: [Next](@next)
