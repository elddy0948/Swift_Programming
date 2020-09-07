# Enum (열거형)

### 열거형이란?

- 연관된 항목들을 묶어서 표현할 수 있는 **타입** 

- Swift의 열거형은 항목별로 값을 가질 수도 안가질 수도 있다.

  ```swift
  //열거형의 선언
  enum CompassPoint {
      case north
      case south
      case east
      case west
  }
  
  //열거형 변수의 생성 및 값 변경
  var directionOne = CompassPoint.north
  var directionTwo: CompassPoint = .north //위의 코드와 똑같은 의미이다.
  directionTwo = .south
  ```

### Switch 구문과 함께 사용

```swift
// switch구문과 함께 사용
directionTwo = .north

switch directionTwo {
case .north:
    print("Going North!")
case .south:
    print("Going South!")
case .east:
    print("Going East!")
case .west:
    print("Going West!")
}
//Going North!
```



### 반복문과 열거형

```swift
//반복문과 열거형
enum coffees: CaseIterable {
    case americano
    case coldbrew
    case cafelatte
}

for coffee in coffees.allCases {
    print(coffee)
}
//americano
//coldbrew
//cafelatte

```

- CaseIterable을 사용하여 allCases를 사용할 수 있다.



### 열거형 - 연관 값 (Associated Values)

```swift
//Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var product: Barcode = .upc(123, 123, 123, 123)
print(product) // upc(123, 123, 123, 123)
product = .qrCode("ABCDSAFDCE")
print(product) // qrCode("ABCDSAFDCE")
```





### 열거형 - 원시 값 (Raw Values)

```swift
//Raw Values
enum WeekDays: String {
    case mon = "월요일"
    case tue = "화요일"
    case wed = "수요일"
    case thu = "목요일"
    case fri = "금요일"
    case sat = "토요일"
    case sun
}
var today: WeekDays = .mon
print(today)    // mon
print(today.rawValue)   // 월요일
today = .sun
print(today)    // sun
print(today.rawValue)   // sun
```

```swift
today = WeekDays(rawValue: "수요일") ?? WeekDays(rawValue: "")!
print(today)    // wed
```

- 위 코드와 같이 raw value로 case를 찾아낼 수도 있다.

