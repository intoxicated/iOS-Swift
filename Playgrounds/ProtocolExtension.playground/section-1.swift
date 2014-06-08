/* Protocol and Extension */

import Cocoa

//can be use for class abstraction
protocol exampleProtocol {
    var description: String { get }
    mutating func adjust()
}

class simpleClass: exampleProtocol {
    var description: String = "simple class"
    var others = 69105
    
    func adjust() {
        description += " now 100% adjusted"
    }
}

var test = simpleClass()
test.adjust()
test.description

struct simpleStruct: exampleProtocol {
    var description: String = "simple struct"
    
    mutating func adjust() {
        description += " (adjusted)"
    }
}

var test2 = simpleStruct()
test2.adjust()
test2.description

//extension, is more like categorize in objective-c
//adding features to existing classes

//in this case, adding exampleProtocol to
//Int class
extension Int: exampleProtocol {
    var description: String {
        return "The number \(self)"
    }
    
    mutating func adjust(){
        self += 42
    }
}

var test3 = 7
test3.description
test3.adjust()
test3

/** Generic **/
//generic function is more like template in C++
func repeat<ItemType>(item: ItemType, times:Int) -> ItemType[] {
    
    var result = ItemType[]()
    for i in 0..times {
        result += item
    }
    
    return result
}

repeat("knock", 4)
repeat(12, 3)
repeat(["test","me"], 5)
repeat(("tu","ple"), 2)

//where keyword to require two types to be same or
//a class to have a particular superclass
func anyCommonElements <T, U where T: Sequence, U: Sequence, T.GeneratorType.Element: Equatable, T.GeneratorType.Element == U.GeneratorType.Element> (lhs: T, rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])