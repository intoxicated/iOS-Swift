/* Enums and structures */

import Cocoa

enum Rank : Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight,
        Nine, Ten
    case Jack, Queen, King
    
    func description() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
    
    func compare(other:Rank) -> Bool {
        return self.toRaw() == other.toRaw() ? true : false
    }
}

let ace = Rank.Ace
let aceRawValue = ace.toRaw()

ace.compare(Rank.Two)
Rank.Two.toRaw()
Rank.Three.toRaw()
Rank.Jack.toRaw()

//raw value to enum value
if let convertedRank = Rank.fromRaw(3){
    let three = convertedRank.description()
}


enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    
    func description() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
}

