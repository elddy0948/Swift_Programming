import Swift

struct myInfo{
    var name: String
    var age: Int
}

var holuck: myInfo = myInfo(name: "Holuck", age: 25)
holuck.age = 99
holuck.name = "HOLUCK"
//let으로 선언하면 값을 변경할 수 없음.
let ho: myInfo = myInfo(name: "HO", age: 25)
//ho.age = 99 // ERROR!!


