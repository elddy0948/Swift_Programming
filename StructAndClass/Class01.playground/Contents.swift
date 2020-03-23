import Swift

class Person {
    var height: Float = 0.0
    var weight: Float = 0.0
    deinit {
        print("클래스의 인스턴스가 소멸됩니다.")
    }
}

var po: Person? = Person()
po = nil    //클래스의 인스턴스가 소멸됩니다.

var holuck: Person = Person()
holuck.height = 177.1
holuck.weight = 70.5

let ho: Person = Person()
ho.weight = 80.2
ho.height = 180.5


