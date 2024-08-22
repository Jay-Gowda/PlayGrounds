//: [Previous](@previous)

import Foundation
var array = [1,2,5,6,8,3,4,2,9]


func swapArrayNumberFrom(array:[Int],target:Int){
    var startIndex =  (array.count % target) - 1
    print(startIndex)
    
    var tempArray = array[startIndex...array.count - 1] + array[0...startIndex]
    print(tempArray)
}
func isPalindrome(array:[Int]){
    var startIndex1 = 0
    var endIndex = array.count - 1
    while startIndex1 != endIndex{
        if array[startIndex1] == array[endIndex] {
            startIndex1 += 1
            endIndex -= 1
        }else{
            print("Success")
            continue
        }
    }
}
func generateFibonacciSeriesFor(count:Int){
    var fibSeries = [0,1]
    while fibSeries.count < count    {
        let lastIndex = fibSeries.count - 1
        let valueToAdd = fibSeries[lastIndex - 1] + fibSeries[lastIndex]
        fibSeries.append(valueToAdd)
        
    }
    print(fibSeries)
    
}

generateFibonacciSeriesFor(count: 10)

func generateTriangleForItems(count:Int){
    var startIndex  = 0
    while startIndex < count{
        for _ in 0...startIndex + 1{
            print(startIndex + 1)
        }
        startIndex += 1
    }
}
generateTriangleForItems(count: 5)
