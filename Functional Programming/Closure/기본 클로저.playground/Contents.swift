import Foundation

// 함수 사용
func backwards(_ first: String, _ second: String) -> Bool {
    return first > second
}
var names = ["Abraham", "Holuck", "Cole"]
let reversed = names.sorted(by: backwards(_:_:))
print(reversed) // ["Holuck", "Cole", "Abraham"]

//선행 클로저
let reversedWithClosure = names.sorted(by: { (first, second) -> Bool in
    return first > second
})
print(reversedWithClosure) //["Holuck", "Cole", "Abraham"]

//Trailing Closure
let trailingClosure = names.sorted { (first, second) -> Bool in
    return first > second
}
print(trailingClosure)  //["Holuck", "Cole", "Abraham"]


//단축 인자 사용
let reversed2 = names.sorted { return $0 > $1 }
print(reversed2)  //["Holuck", "Cole", "Abraham"]

//암시적 반환 표현
let reversed3 = names.sorted { $0 > $1 }
print(reversed3) //["Holuck", "Cole", "Abraham"]


//값 획득
func makeIncrementer(forIncrement amount: Int) -> (() -> Int) {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
