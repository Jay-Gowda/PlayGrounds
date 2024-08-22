//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


///
///Map
///Flatmap
///filter
///
///
var arrayOfNumbers = [1,3,7,2,0]

//MAP: Transforms each element in a collection.
let mapNumbers = arrayOfNumbers.map { $0 * $0 }
print(mapNumbers)

//FILTER: Selects elements from a collection based on a condition.
let filterNumbers = arrayOfNumbers.filter { $0 % 2 == 0 }
print(filterNumbers)

//REDUCE: Combines all items in a collection to create a single new value.
let sum = arrayOfNumbers.reduce(0, { $0 + $1 })
print(sum)

//COMPACTMAP: Transforms elements and removes nil values from the result.
let numbers = arrayOfNumbers.compactMap { String($0) }
print(numbers)
