import Foundation


protocol GetUsersView{
    var userId:String{get}
    func getAllUsers()
    func update(userIdVal:Int)
}

class PerformAPI:GetUsersView,Equatable{
    static func == (lhs: PerformAPI, rhs: PerformAPI) -> Bool {
        <#code#>
    }
    
    
    private var userIdVal:Int?
    var userId:String{
        return String(describing: userIdVal)
    }
    func update(userIdVal:Int) {
        self.userIdVal = userIdVal
    }
    func getAllUsers(){
        print(userId)
    }
}


let user = PerformAPI()
var proto:GetUsersView = user
proto.update(userIdVal: 2)
proto.getAllUsers()



func swapTwoNos<Tea>(value1:inout Tea, value2:inout Tea){
    
    let z = value1
    value1 = value2
    value2 = z
    print("value1 = \(value1), value2 = \(value2)")
}

var value1 = "a"
var value2 = "b"

swapTwoNos(value1: &value1, value2: &value2)



