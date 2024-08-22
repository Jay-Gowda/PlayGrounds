//: [Previous](@previous)
//https://www.youtube.com/watch?v=VAA6lZsODh4

//“Functions that use pointers or references to base classes must be able to use objects of derived classes without knowing it"
//In lame language, child class should not change the functionallity of the base class

import Foundation

//
class Rectangle{
    var width:Double = 0
    var length:Double = 0
    
    var area:Double{
        return width * length
    }
}

class Square:Rectangle{
//    This should not be done which is going to change the base class implementation
    override var width:Double{
        didSet{
            length = width
        }
    }
}

var SquareBoc = Rectangle()
SquareBoc.length = 3
SquareBoc.width = 4

var box = Square()
box.width = 3
print(SquareBoc.area)
print(box.area)





//Instead do This. Right method
protocol Sumup{
    var area:Double{get}
}

class Rectangle1:Sumup{
    var width:Double = 0
    var length:Double = 0
    
    var area:Double{
        return width * length
    }
}

class Square1:Sumup{
    var width:Double = 0
    var area:Double{
        return width * width
    }
}

var SquareBoc1 = Rectangle1()
SquareBoc1.length = 3
SquareBoc1.width = 4

var box1 = Square1()
box1.width = 3
print(SquareBoc1.area)
print(box1.area)
