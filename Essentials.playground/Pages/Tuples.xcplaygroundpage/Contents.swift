//: [Previous](@previous)

import Foundation


//In Swift, a tuple is a group of different values. And, each value inside a tuple can be of different data types.


let matchTimings = (10, 14, 17, 21)
print("First match is at \(matchTimings.0)")

//Named Tuples
let players = (Goalie:2, shooter:4, defence: 4)
print("There are \(players.Goalie)")



func performApiCall() -> (Data, Bool){
    return (Data(), true)
    
}
