//: [Previous](@previous)

import Foundation

var a = 0
var b = 0

let newClosure = {print(a,b)}
newClosure()


var closureArray: [() -> ()] = []
var i = 0

for _ in 1...5 {
    closureArray.append {
        print(i)
    }
    i += 1
}

// i = 5 the value of i is Captured

closureArray[0]() //5
closureArray[1]() //5
closureArray[2]() //5
closureArray[3]() //5
closureArray[4]() //5



var c = 0
var d = 0

var smartClosure: () -> () = {
    print(c,d)
}

c = 9
d = 9

smartClosure()

// Introducing Capture List

let smarterClosure: () -> () = { [c,d] in
    print(c,d)
}

smarterClosure()
c = 10
d = 10
smarterClosure()
smartClosure()


// In case of the array

var smartClosureArray: [() -> ()] = []
var j = 0
    
for _ in 1...5 {
    
    smartClosureArray.append { [j] in
        print(j)
    }
        j += 1
}
smartClosureArray[0]()
smartClosureArray[1]()
smartClosureArray[2]()
smartClosureArray[3]()
smartClosureArray[4]()






















//: [Next](@next)
