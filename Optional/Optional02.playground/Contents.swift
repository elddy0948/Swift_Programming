import Swift

//옵셔널 바인딩을 사용한 여러 개의 옵셔널 값의 추출
var myName: String? = "Holuck"
var yourName: String? = nil

if let name1 = myName, let name2 = yourName {
    print("name1 : \(name1) , name2 : \(name2)")    //실행 되지 않는다.
}
yourName = "Hobbang"

if let name1 = myName, let name2 = yourName {
    print("name1 : \(name1), name2 : \(name2)") //name1 : Holuck, name2 : Hobbang
}


//암시적 추출 옵셔널의 사용
var name: String! = "Holuck"
print(name)
name = nil

//암시적 추출 옵셔널도 옵셔널 이므로 바인딩 사용 가능
if let my = name {
    print("My name is \(my)")
} else {
    print("my is nil")
}
//Optional("Holuck")
//my is nil
