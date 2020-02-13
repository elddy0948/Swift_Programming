import Swift

let name : String = "Holuck"
var nameString : String = String() // 이니셜라이저를 사용한 빈 문자열 생성

// append()를 사용하여 문자열을 이어붙인다.
nameString.append(name)
nameString.append(" ")

// +연산자를 사용하여 문자열을 이어붙인다.
nameString = nameString + " " + name

// 문자의 수를 반환하는 count
print(name.count)   // 6

// 빈 문자열인지 확인하는 isEmpty
print(nameString.isEmpty)   // false

//Unicode의 스칼라 값을 사용
let unicodeScalarValue : String = "\u{2665}"
print(unicodeScalarValue)   //  ♥


//  연산자를 통한 문자열 비교
var isMyName : Bool = name == "Holuck"
print(isMyName) // true
isMyName = name == "holuck"
print(isMyName) // false

//  접두어, 접미어 확인
var hasPrefix : Bool = false
var hasSuffix : Bool = false

//접두어 확인
hasPrefix = name.hasPrefix("Ho")
print(hasPrefix) // true
hasPrefix = name.hasPrefix("Hi")
print(hasPrefix) // false

//접미어 확인
hasSuffix = name.hasSuffix("ck")
print(hasSuffix) // true
hasSuffix = name.hasSuffix("lk")
print(hasSuffix) // false

var convertedString : String = String()
convertedString = name.uppercased()
print(convertedString) //   HOLUCK
convertedString = convertedString.lowercased()
print(convertedString) //   holuck

let myDream : String = """
    제 꿈은
    스위프트를 마스터 하는 것입니다 !!
"""
print(myDream)
//제 꿈은
//스위프트를 마스터 하는 것입니다 !!

print("줄바꿈 \n 백슬래시 표현 \\ 큰따옴표 표현 \" 탭. \t 문자열이 끝났음을 알리는 \0")

var anyVar : Any = "thisIsString"
anyVar = 100
anyVar = 100.2
