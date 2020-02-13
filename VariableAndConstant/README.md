# 변수와 상수



### 	1. 변수

​			Swift에서 변수를 생성하려면 var 를 사용합니다.

```swift
// var [변수명]: [데이터타입] = [값]
var myName: String = "Holuck"
```

​			여기서 데이터 타입은 생략이 가능합니다. 타입을 생략할 경우에는 타입 추론으로 타입이 지정됩니다.

```swift
// var [변수명] = [값]
var age = 25
```

​			또한 변수는 값을 변경할 수 있습니다.

```swift
age = 1 // age == 1
```

​			단 변수를 변경할 때에는 선언했을때와의 같은 타입으로 변경해 주어야 합니다.



### 	2. 상수

​			Swift에서 상수를 생성하려면 let 키워드를 사용합니다.

```swift
//let [변수명]: [데이터타입] = [값]
let constName: String = "Holuck"
```

​			상수 생성 또한 데이터타입을 생략할 수 있습니다.

```swift
//let [변수명] = [값]
let constAge = 25
```

​			변수와는 다르게 상수는 값을 변경할 수가 없습니다!!

```swift
age = 99 // age==99
constAge = 99 // error!
```

