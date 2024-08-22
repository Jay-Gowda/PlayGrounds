//: [Previous](@previous)

import Foundation


class Items:Equatable{
    
    //This is method is used to differentiate the comparison parameter from the class instance
    static func == (lhs: Items, rhs: Items) -> Bool {
        if lhs.itemId == rhs.itemId{
            return true
        }
        return false
    }
    
    var name:String
    var description:String?
    var itemId:Int
    
    
    init(name:String, itemId:Int) {
        self.name = name
        self.itemId = itemId
    }
}

var redBall:Items = Items(name: "Red Ball", itemId: 123)
var yellowBall:Items = Items(name: "Yellow Ball", itemId: 1234)

if redBall == yellowBall{
    print("ItemId is not the same ")
}

