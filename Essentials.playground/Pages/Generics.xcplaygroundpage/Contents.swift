//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//create a generic function with type constraint- Numeric, Signed numeric
func addTwoNumbers<T:Numeric>(value1:T, value2:T){
    let result = value1 * value2
    print( "Result is \(result)")
    
}

let integer: () = addTwoNumbers(value1: 1, value2: 2)
let decimal: () = addTwoNumbers(value1: 1.2, value2: 2.33)



// create a generic class
class Information<T> {
    
    // property of T type
    var data: T
    
    init (data: T) {
        self.data = data
    }
    
    // method that return T type variable
    func getData() -> T {
        return self.data
    }
}

// initialize generic class with Int data
var intObj = Information<Int>(data: 6)
print("Generic Class returns:", intObj.getData())

// initialize generic class with String data
var strObj = Information<String>(data: "Swift")
print("Generic Class returns:", strObj.getData())


























