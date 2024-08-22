//: [Previous](@previous)

import Foundation

//“Clients should not be forced to depend upon interfaces that they do not use.”
//- Don’t force classes to implement methods they can’t
//- Don’t pollute protocols with a lot of methods
//- Fat interfaces


//protocol Routine{
//    func goToWork()
//    func makeMoney()
//    func goToSleep()
//    func eatFood()
//}
//class Human:Routine{
//}
//class Animal:Routine{
//}
//This is what this principle mentions about, Never use any interfase that they do not use like Animal dont need goToWork and makeMoney within their routine

//Do this instead which will segregate the tasks as per the interphase

protocol Busy{
    func goToWork()
    func makeMoney()
}
protocol Hunt{
    func findPrey()
}
protocol Survive{
    func goToSleep()
    func eatFood()
}
class Human:Busy, Survive{
}
class Animal:Hunt, Survive{
}







