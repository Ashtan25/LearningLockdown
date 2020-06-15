//: [Previous](@previous)

import Foundation

protocol LifeSpan {
    
    var numberOfHearts: Int {get}
    mutating func increaseHearts()
    mutating func getAttacked()

}

enum Player: LifeSpan {
    
    case dead
    case alive(currentHeart: Int)
    
    
    
    var numberOfHearts: Int{
        switch self {
        case .dead:
            return 0
        case let .alive(numberOfHearts):
            return numberOfHearts
        }
    }

    
    
    mutating func increaseHearts() {
        switch self {
        case .dead:
            self = .alive(currentHeart: 1)
        case let .alive(numberOfHearts):
            self = .alive(currentHeart: numberOfHearts + 1)
        }
    }
    
    mutating func getAttacked() {
        switch self {
        case .alive(let numberOfHearts):
            
            if numberOfHearts == 1 {
                self = .dead
            } else {
                self = .alive(currentHeart: numberOfHearts - 1)
            }
        case .dead:
            break
            
        }
    }
   
}

var state = Player.dead
state.increaseHearts()
state.numberOfHearts
state.increaseHearts()
state.getAttacked()
state.getAttacked()
state.numberOfHearts


enum GameAction {
    case Start
    case Pause
    case Stop
    case Restart(delay: Int)

}

//GameAction.Stop == GameAction.Stop

func ==(lhs: GameAction, rhs: GameAction) -> Bool {
    
    switch (lhs, rhs) {
    case (.Start, .Start), (.Pause, .Pause), (.Stop, .Stop):
        return true
    
    case let (.Restart(lhsdelay), .Restart(rhsdelay)):
        return lhsdelay == rhsdelay
        
    default:
        return false
    }
    
    
}


GameAction.Restart(delay: 10) == GameAction.Restart(delay: 10)

















//: [Next](@next)
