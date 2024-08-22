//: [Previous](@previous)

import Foundation
class Student:Equatable{
    static func == (lhs: Student, rhs: Student) -> Bool {
        if ((lhs.intern == rhs.intern) || (lhs.age == rhs.age)){
            return true
        }
        return false
    }
    
    var firstName:String
    var lastName:String?
    var age:Int
    var intern:Bool
    
    init(firstName:String, age:Int, lastName:String?, intern:Bool?) {
        self.age = age
        self.firstName = firstName
        self.intern = intern ?? false
    }
}

let jay = Student(firstName: "Jay", age: 22,lastName: nil,intern: nil)
let gowda = Student(firstName: "Gowda", age: 22, lastName: "Jay", intern: true)

let students = [jay,gowda]
if jay == gowda{
    print("interns")
}

