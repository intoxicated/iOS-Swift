import Cocoa

/*******************************************************
 *                                                     *
 *                Constant and Variables               *
 *                                                     *
 *******************************************************/

//constant, cannot change its value once its declared
let welcomeMessage = "Welcome!!"
let maxNumOfNode = 10
//maxNumOfNode = 11 <-- compile time error

//variable, can be changed anytime
var currentNodeNum = 1
currentNodeNum = 12

//Swift supports unicode variable naming !!! Awesome :D
var 진짜 = "한글"
var cat = "🐱"

//printing constants and variables
println(welcomeMessage)
println("This is welcome message -\(welcomeMessage)-")

/*******************************************************
 *                                                     *
 *                   Type Annotation                   *
 *                                                     *
 *******************************************************/

//you can explicitly define a constant or variable type
var message:String
//or even cocoa type
var otherMessage:NSString
var array:NSMutableArray = NSMutableArray()
array.addObject("Whatever")
array.addObject(3)

//but Swift already provides array and dictionary type 
//so it would be rare to use these types in practice 
//unless you mix up with objective-C and Swift in your project

//liner comment
/* multiple lines comment */

/*******************************************************
 *                                                     *
 *                    Primitive types                  *
 *                                                     *
 *******************************************************/

//Intgeter 8,16,32 and 64 both signed and unsigned
var tiny:Int8
var small:Int16
var medium:Int32
var large:Int64

//each type have min/max properties to check bounds
var min = Int8.min
var max = Int8.max

var oneInt:Int //Int32 on 32 bit platform, Int64 on 64 bit
var otherInt:UInt //same as previous 

var floatingPoint:Float //32bit precision
var DoublePoint:Double //64bit precision 

//Because Swift does type inference you only need to define 
//types explicitly when you need it
let n = 35 //Int 
let str = "This is String" //String
let fl = 3.1341 //Double 

/* Numeric Literals */
let decimal = 1341
let binary = 0b01101
let oct = 0o21
let hex = 0x11

//exp
let ex = 1.25e2 //1.25 x 10^2, 125
let nex = 1.25e-2 //1.25 x 10^-2, 0.0125

//padding is also possible for increase readability
let paddedDouble = 000123.456
let million = 1_000_000

//Type Aliases: is like #define macro 
//to use different name for existing type
typealias AudioSampleUnit = UInt16
var sample:AudioSampleUnit = AudioSampleUnit.max

//Boolean, unlike C/C++ or Objective-C Swift prevents
//to use non-boolean values for being be substituted for condition
let i = 1

//if i { <-- compile error

//}

//Tuple!!! finally :)
//like Python, Swift now supports tuple type
//which allows you to return multiple values 
let http404Error = (404, "Page Not Found")

//decompose to separate variables
let (statusCode, msg) = http404Error

//use _ to ignore unwanted values
let (code, _) = http404Error

//alternatively, you can access individual element
let errorCode = http404Error.0

//you can also name each element as you want
let http200Status = (code: 200, msg: "OK")
http200Status.code
http200Status.msg

/* Optionals (question mark) a value may be absent */

/**
 this can be used to infer a value is missing after some operation
 for instance, you get a input from user that is string and user 
 suppose to provide number so you can use toInt method to convert 
 string to int afte that. But it is possible that user provides 
 non-numeric values and as a result toInt will not convert it to 
 number value so typically these kinds of operation returns optional 
 type to return nil to indicate failure of operation. This optional
 can be applied to any types including object, c-primitive, struct, etc
 **/
var userInput1 = "123"
var userInput2 = "123fed"

let convertedNum1 = userInput1.toInt() //return optional Int
let convertedNum2 = userInput2.toInt() //return nil 

//exclamation mark to denote optional does contain a value and access 
//forced unwrapping 

//optional type can be used for condition whether a value is 
//there or missing
if convertedNum2 {
    let cstr = "has value \(convertedNum2)"
} else {
    let cstr = "could not convert to number"
}

//optional binding
if let input = userInput1.toInt() {
    input
}

//you can't set normal variable to nil but optional can
//var output:Int = nil
var output:Int? = 404
output = nil

let possibleString: String? = "An optional String"
//exclamantion mark is requred to access optional value
println(possibleString!)

let assumedString: String! = "implicit unwrapped optional string"
//optional but do not need exclamanation mark
println(assumedString)









