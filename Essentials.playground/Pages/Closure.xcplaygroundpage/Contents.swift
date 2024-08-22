//: [Previous](@previous)

import Foundation

var welcomeMessage = { (value:String) -> String in
    return "Welcome to the group \(value)"
}

print(welcomeMessage("heelo"))

////Escaping closure
///An escaping closure is a closure that's passed as an argument to a function and is executed after the function returns.
print("There")
func performApiCall(completion:@escaping (Bool) -> Void){
    completion(true)
}



