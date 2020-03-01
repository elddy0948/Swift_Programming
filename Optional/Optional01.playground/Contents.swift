import Swift

//switch를 통한 옵셔널 값의 확인

let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers {
    switch number {
    case .some(let value) where value < 0:
        print("Negative value!! \(value)")
    case .some(let value) where value > 10:
        print("LargeValue!! \(value)")
    case .some(let value):
        print("Value \(value)")
    case .none:
        print("nil")
    }
}
//Value 2
//nil
//Negative value!! -4
//nil
//LargeValue!! 100


//옵셔널 강제 추출
var myName: String? = "Holuck"
var holuck: String = myName!

myName = nil
//holuck = myName // Error!

//옵셔널 바인딩을 사용한 옵셔널 값의 추출
var name: String? = "Holuck"

if let ho = name {
    print("my name is \(ho)")
} else {
    print("name == nil")
}
//my name is Holuck

