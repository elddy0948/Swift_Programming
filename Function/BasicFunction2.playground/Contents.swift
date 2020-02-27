import Swift

//가변 매개변수를 가지는 함수의 정의와 사용
func sayHelloToFriends(me: String, friends names: String...) -> String {
    var a: String = ""
    for friend in names {
        a += "Hello \(friend) !" + " "
    }
    a += "I'm " + me + " !"
    return a
}
print(sayHelloToFriends(me: "Holuck", friends: "Kim", "Son", "Kevin", "Lucas")) // Hello Kim ! Hello Son ! Hello Kevin ! Hello Lucas ! I'm Holuck !
print(sayHelloToFriends(me: "Holuck"))  // I'm Holuck !


//반환값이 없는 함수
func sayHelloWorld(){
    print("Hello World!!")
}
sayHelloWorld()

//함수 타입의 사용

typealias CalculateTwoInts = (Int, Int) -> Int

func addTwoInts(_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}
func multiplyTwoInts(_ num1: Int, _ num2: Int) -> Int {
    return num1 * num2
}
var mathFunction: CalculateTwoInts = addTwoInts(_:_:)
print(mathFunction(2,5))    //7
mathFunction = multiplyTwoInts(_:_:)
print(mathFunction(2,5))    //10

//전달인자로 함수를 전달받는 함수
func printResult(_ mathFunction: CalculateTwoInts, _ a: Int, _ b: Int){
    print("Result: \(mathFunction(a,b))")
}
printResult(addTwoInts(_:_:), 3, 5) //Result: 8

//특정 조건에 따라 적절한 함수를 반환해주는 함수
func chooseMathFunction(_ toAdd: Bool) -> CalculateTwoInts {
    return toAdd ? addTwoInts : multiplyTwoInts
}
printResult(chooseMathFunction(true), 3, 4) // Result: 7


//중첩 함수의 사용

typealias MoveFunc = (Int) -> Int

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
    func goRight(_ currentPosition: Int) -> Int {
        return currentPosition + 1
    }
    func goLeft(_ currentPosition: Int) -> Int {
        return currentPosition - 1
    }
    return shouldGoLeft ? goLeft : goRight
}
var position: Int = -4
let moveToZero: MoveFunc = functionForMove(position > 0)
while position != 0 {
    print("\(position)...")
    position = moveToZero(position)
}
print("도착!")
//-4...
//-3...
//-2...
//-1...
//도착!

//비반환 함수의 정의와 사용
func crashAndBurn() -> Never {
    fatalError("Something very, very bad happend")
}
//crashAndBurn()

func someFunction(isAllIsWell: Bool) {
    guard isAllIsWell else {
        print("마을에 도둑이 들었습니다!!")
        crashAndBurn()
    }
    print("All is well")
}
someFunction(isAllIsWell: true)
//someFunction(isAllIsWell: false)

//@discardableResult 속성 사용
func say(_ something: String) -> String {
    print(something)
    return something
}
@discardableResult func discadableResultSay(_ something: String) -> String {
    print(something)
    return something
}
say("hello!")   //반환값을 사용하지 않아 경고 표시
discadableResultSay("hello")
