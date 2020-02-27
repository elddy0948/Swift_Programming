import Swift

//기본적인 함수 정의
func sayHello(name: String) -> String {
    return "Hello \(name)!!"
}

let myName: String = "Holuck"
print(sayHello(name: myName))   //Hello Holuck!!


func hello() -> String {
    return "Hello!!"
}
func helloToMe(name: String, weather: String) -> String {
    return "Hello! \(name)! it's \(weather) today!"
}
let helloVar: String = helloToMe(name: "Holuck", weather: "Rain")
print(hello())  //Hello!!
print(helloVar) //Hello! Holuck! it's Rain today!


//매개변수 이름과 전달인자 레이블을 가지는 함수 정의와 사용
func helloLabel(from myName: String, to name: String) -> String {
    return "Hello to \(myName), I'm \(name)"
}
print(helloLabel(from: "Holuck", to: "Hobbang"))    //Hello to Holuck, I'm Hobbang


//전달인자 레이블이 없는 함수 정의와 사용
func helloNoLabel(_ myName: String, _ name: String) -> String {
    return "Hello to \(myName), I'm \(name)"
}
print(helloNoLabel("Holuck", "Hobbang"))    //Hello to Holuck, I'm Hobbang

//전달인자 레이블 변경을 통한 함수 중복 정의
func funnySwift(to name: String, _ times: Int) -> String {
    return "Hello Swift and \(name) \(times)!!"
}
func funnySwift(to name: String, repeatCount times: Int) -> String {
    return "Hello \(name) and Swift \(times)!!"
}
print(funnySwift(to: "Holuck", 1))  //Hello Swift and Holuck 1!!
print(funnySwift(to: "Holuck", repeatCount: 2)) //Hello Holuck and Swift 2!!

//매개변수 기본값이 있는 함수의 정의와 사용
func defaultFunc(_ name: String, times: Int = 2) -> String{
    return "Hello \(times)times to \(name)!!"
}
print(defaultFunc("Holuck"))    //  Hello 2times to Holuck!!
print(defaultFunc("Hobbang", times: 1)) //  Hello 1times to Hobbang!!
