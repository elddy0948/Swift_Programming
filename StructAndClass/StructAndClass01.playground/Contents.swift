import Swift

struct myInfo{
    let name: String
    var age: Int
}
var holuck: myInfo = myInfo(name: "Holuck", age: 25)
var hobbang: myInfo = holuck
hobbang.age = 100
print(holuck.age)   //25
print(hobbang.age)  //100

class Person{
    var name: String = ""
    var age: Int = 0
}

var joons: Person = Person()
var joonsFriend: Person = joons //joons의 참조를 할당한다.
joonsFriend.age = 26
print(joons.age)    //26
print(joonsFriend.age)  //26


var a: Person = Person()
var b: Person = a
var c: Person = Person()
print(a === b)  //true
print(a === c)  //false
print(a !== c)  //true
