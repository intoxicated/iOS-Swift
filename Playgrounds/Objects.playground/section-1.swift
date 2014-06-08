/* objects and classes */

import Cocoa

class Shape {
    //member variable
    var numberOfSide = 0
    var name: String?
    let owner = "Woo"
    
    //member function
    func description() -> String {
        return "A shape with \(numberOfSide) sides"
    }
    
    func setName(name:String) -> String {
        self.name = name
        return "A shape name changed to \(self.name)"
    }
}

var shape = Shape()
shape.numberOfSide = 7
var shapeDescription = shape.description()

//superclass
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    //instance initializer
    init(name: String){
        self.name = name
    }
    
    //deinitializer
    deinit {
        //clean up
    }
    
    func description() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

//subclass
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        //calling super class init
        super.init(name: name)
        //inherited superclass's variable
        self.numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    //override superclass method
    override func description() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.0, name: "my Square")
test.area()
test.description()

//more subclass
class Circle: NamedShape {
    var radius: Double
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
        self.numberOfSides = 0
    }
    
    func area() -> Double {
        return radius * radius * pi
    }
    
    override func description() -> String {
        return "A circle has radius \(radius)"
    }
}

let circletest = Circle(radius: 2.3, name: "my circle")
circletest.area()
circletest.description()

//another subclass
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    //member variable setter and getter
    //rather having function to handle, it has its own syntax
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
    
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func description() -> String {
        return "An equilateral triangle with"
         + " sides of length \(sideLength)"
    }
}

var triangle = EquilateralTriangle(sideLength: 2.5, name: "Triangle")
triangle.perimeter
triangle.perimeter = 6.0
triangle.sideLength

class TriangleAndSquare {
    var triangle: EquilateralTriangle {
    willSet {
        square.sideLength = newValue.sideLength
    }
    }
    
    var square: Square {
    willSet {
        triangle.sideLength = newValue.sideLength
    }
    }
    
    init(size: Double, name:String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var tas = TriangleAndSquare(size: 10, name: "another test shape")
tas.square.sideLength
tas.triangle.sideLength
tas.square = Square(sideLength: 5, name: "large square")
tas.triangle.sideLength


