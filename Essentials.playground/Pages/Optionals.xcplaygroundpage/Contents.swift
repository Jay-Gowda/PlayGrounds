//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


var gift:String?

//Nil-Coalescing operator
print("This is jayanths gift \(gift ?? "Archies gift card")")


func addTwoNumbers(value1:Int?, value2:Int?) -> Int{
    //Optional binding
    guard let value1 = value1, let value2 = value2 else {
        return 0
    }
    return value1 + value2

}

