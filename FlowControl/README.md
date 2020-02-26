# 흐름 제어

## 조건문

- ### if 구문

  - Swift의 if 구문은 조건의 값이 꼭 Bool 타입이어야 함.

  - ```swift
    let num1: Int = 10
    let num2: Int = 14
    
    if num1 > num2 {
        print("num1 > num2")
    } else if num1 < num2 {
        print("num1 < num2")
    } else {
        print("num1 == num2")
    }
    ```

    

- ### switch 구문

  - Swift에서의 switch구문은 C언어와 비슷한데 break가 없다.

  - case를 연속 실행하려면 fallthrough 키워드 사용

  - ```swift
    let value: Int = 5
    
    switch value {
    case 0...3:
        print("Value is 0~3")
    case 4...5:
        print("Value is 4~5")
        fallthrough
    default:
        print("Is it right?")
    }
    //Value is 4~5
    //Is it right?
    ```

  - ```swift
    //와일드카드 식별자를 사용한 튜플 switch case 구성
    typealias myNameAndAge = (name: String, age: Int)
    
    let tupleValue: myNameAndAge = ("Holuck", 25)
    
    switch tupleValue {
    case ("Holuck", 25):
        print("정확합니다!!")
    case ("Holuck", _):
        print("이름은 맞는데...")
    case (_, 25):
        print("나이는 맞는데...")
    default:
        print("맞춰보세요!")
    }
    
    switch tupleValue {
    case ("Holuck", 25):
        print("정확합니다!!")
    case ("Holuck", let age):
        print("이름만 맞았어요~")
    case(let name, 25):
        print("나이만 맞았어요~")
    default:
        print("맞춰보세요!")
    }
    ```

  - ```swift
    //열거형을 입력 값으로 받는 switch구문
    enum todayDinner {
        case pizza, chicken, hamburger
    }
    let myDinner: todayDinner = todayDinner.pizza
    
    switch myDinner {
    case .chicken:
        print("치킨이군요!")
    case .hamburger:
        print("햄버거군요!")
    case .pizza:
        print("피자군요!!")
    default:
        print("안먹을건가요?")
    }
    ```

## 반복문

- ### for-in 구문

  - ```swift
    for i in 0...5 {
        print(i) // 0 1 2 3 4 5
    }
    ```

  - ```swift
    //기본 데이터 타입의 for-in 반복문 사용
    let myPhone: [String: Int] = ["iPhone8+": 100, "GalaxyS20": 50]
    for items in myPhone {
        print(items)
    }
    //(key: "iPhone8+", value: 100)
    //(key: "GalaxyS20", value: 50)
    
    for (key, value) in myPhone {
        print("\(key) : \(value)")
    }
    //iPhone8+ : 100
    //GalaxyS20 : 50
    
    let names: Set<String> = ["Kim", "Lee", "Park", "Son"]
    for name in names {
        print(name)
    }
    //Park
    //Son
    //Lee
    //Kim
    ```

- ### While 구문

  - ```swift
    var names: [String] = ["Kim", "Son", "Lee", "Park"]
    
    while names.isEmpty == false {
        print("GoodBye \(names.removeFirst())")
    }
    //GoodBye Kim
    //GoodBye Son
    //GoodBye Lee
    //GoodBye Park
    ```

  - Repeat - while 구문

    - ```swift
      //repeat - while
      var names2: [String] = ["Kim", "Son", "Lee", "Park"]
      
      repeat {
          print("GoodBye \(names2.removeFirst())")
      } while names2.isEmpty == false
      //GoodBye Kim
      //GoodBye Son
      //GoodBye Lee
      //GoodBye Park
      ```

## 구문 이름표

- ### 구문 이름표

  - ```swift
    nameLoop: for name in names3 {
        if {
            continue nameLoop
        }
        else{
            break nameLoop
        }
    }
    ```

    