// Playground - noun: a place where people can play

import Cocoa


println("Hello World")

var myvariable = 10
let myconstant = 11
let explitDouble:Double = 80
let explitFloat:Float = 4

//concat
let str = "Apple is "
let num = 4
let sum = str + String(num)

//use variable in string (like perl)
let apple = 3
let oranges = 5
let appleSummary = "I have \(apple) apples"
let orangeSummary = "I have \(oranges) orangles"

println("\(appleSummary)")

let cost = 72.5
let tip:Double = 3
let end = "your cost will be \(tip + cost)"

//array
var list = ["cat", "dog", "duck","rabbit"]
list[1]
var emptylist = String[]()


//dict
var list2 = [
    "entry" : 1,
    "name"  : "Wooyoung",
    "age"   : 28
    ]

list2["age"]
var emptydict = Dictionary<String, AnyObject>()

var optionalString: String? = "Hello"

var optionalName: String? = "John"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}


//switch 
let vege = "red pepper"
switch vege {
    case "carrot":
        println("this is carrot")
    case "pico":
        println("this is pico")
    case let x where x.hasPrefix("red"):
        println("This is pepper!!")
    default:
        println("WATEVER")
}

//loop
let numbers = [
    "prime" : [2,3,5,7,11,13],
    "fib"   : [1,1,2,3,5,8],
    "square": [1,4,9,16,25],
]

var largest = 0
var numtype = ""

/*
for (kind, nums) in numbers {
    for number in nums {
        if number > largest {
            largest = number
            numtype = kind
        }
    }
}
*/
numtype
largest
/*
var n = 100
while n > 0 {
    n = n/2
}

n = 2

do {
    n = n * 2
} while n < 100
*/

//range
var loop = 0
for i in 0..3 {
    loop += i
}

loop











