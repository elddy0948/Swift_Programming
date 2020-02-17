import Swift

typealias MyInfoTuple = (name : String, age : Int, height : Double)

var holuck : MyInfoTuple = ("Holuck", 25, 177.1)

print("이름 : \(holuck.name)\n나이 : \(holuck.1)\n키 : \(holuck.height)")
//이름 : Holuck
//나이 : 25
//키 : 177.1
holuck.age = 20
holuck.2 = 180.0
