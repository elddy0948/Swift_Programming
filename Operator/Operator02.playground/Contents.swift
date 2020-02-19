import Swift
import Foundation

//전위 연산자
prefix operator **
prefix func ** (value: Int) -> Int {
    return value * value
}
let minusFive: Int = -5
let sqrtMinusFive: Int = **minusFive
print(sqrtMinusFive)    // 25

//후위 연산자
postfix operator ***
postfix func *** (value: Int) -> Int {
    return value + 10
}
let five: Int = 5
let plusTen: Int = five***
print(plusTen)  //15

//중위 연산자

infix operator **** : MultiplicationPrecedence
func **** (lhs: String, rhs: String) -> Bool {
    return lhs.contains(rhs)
}
let myName: String = "Holuck"
let ho: String = "Ho"
let isitTrue: Bool = myName **** ho
print(isitTrue) // true
