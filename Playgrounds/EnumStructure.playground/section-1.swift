/* Enums and structures */

import Cocoa


//Enums
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
    
    func color() -> String {
        switch self {
        case .Spades, .Clubs:
            return "black"
        case .Hearts, .Diamonds:
            return "red"
        default:
            return "n/a"
        }
    }
}

let hearts = Suit.Hearts
let desc = hearts.description()
let color = hearts.color()

//Structure
//values are copied
struct Card {
    var rank: Rank
    var suit: Suit
    
    func description() -> String {
        return "The \(rank.description()) of \(suit.description())"
    }
}

//implicitly call rank and suit enum following dot
let three = Card(rank: .Three, suit: .Spades)
let threeDesc = three.description()

//enum with arguments
enum ServerResponse {
    case Result(String, String)
    case Error(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of Cheese")

switch success {
case let .Result(rise, set):
    let sr = "Sunrise is at \(rise) and Sunset is at \(set)"
case let .Error(error):
    let sr = "Failure ... \(error)"
}





