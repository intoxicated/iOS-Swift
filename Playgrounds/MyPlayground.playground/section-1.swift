// Playground - noun: a place where people can play

import Cocoa

//function & Closure
func greet(name:String, day:String) -> String {
    return "Hello \(name), today is \(day)"
}

println(greet("Wooyoung", "Firday"))

func getGasPrices() -> (Double, Double, Double) {
    return (5.32, 3.23, 3.53)
}

getGasPrices()

func sumOf(numbers:Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}

sumOf()

func addup(nums:NSArray) -> Int {
    var add = 0
    for n in nums {
        add += Int(n as Int)
    }
    return add
}

addup([1,2,3,4])

//function in function
func returnFif() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    
    add()
    return y
}

returnFif()

//function return function
func makeInc() -> (Int -> Int) {
    func addone(number: Int) -> Int {
        return 1 + number
    }
    
    return addone
}

//like function pointer
var inc = makeInc()
inc(7)

//function as argument
//signature has to be match (argument/return)
func hasAnyMatches(list: Int[], condition:Int -> Bool)
    -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        
        return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var nums = [20, 19, 4, 12]
hasAnyMatches(nums, lessThanTen)

//map is more like lambda calculation
//with closure, you can do modification of each element in array in line
nums.map({(number:Int) -> Int in
    let result = 3 * number
    return result
    })

//simpler version if type is known
nums.map({ number in 3 * number })

//set 0 if number is odd
nums.map({(number:Int) -> Int in
    return number % 2 != 0 ? 0 : number
})

//one liner of previous example
nums.map({ /* each element */ number in /* return part */ (number % 2 != 0) ? 0 : number})

//sorting in efficient manner with closure
sort([1,5,3,12,2]) { $0 < $1 }








