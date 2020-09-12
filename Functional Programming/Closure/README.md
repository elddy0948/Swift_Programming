# 클로저

### 클로저?

- 일정한 기능을 하는 코드를 하나의 블록으로 모아놓은 것.
  - 클로저는 변수나 상수가 선언된 위치에서 Reference를 획득하고 저장할 수 있다.
  - 함수는 클로저의 몇가지 형태 중 하나이다.
  - 클로저의 형태
    - 이름이 있으면서 어떤 값도 획득하지 않는 전역함수의 형태

### 표현 방법에 따른 클로저

- 기본 클로저

  - sorted(by : ) 메서드를 이용해 알아보면

    ```swift
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
    ```

- 후행 클로저

  - 클로저가 조금 길어지거나 가독성이 조금 떨어진다 싶으면 후행 클로저를 사용한다. Xcode에서도 후행클로저 사용을 유도.

    ```swift
    //Trailing Closure
    let trailingClosure = names.sorted { (first, second) -> Bool in
        return first > second
    }
    print(trailingClosure)  //["Holuck", "Cole", "Abraham"]
    ```

- 클로저 표현 간소화

  - 단축 인자 이름

    - 단축 인자 이름은 첫 번째 전달인자부터 $0, $1, $2, ... 순서로 $와 숫자의 조합으로 표현.

    - 단축 인자 표현을 사용하게 되면 매개변수 및 반환 타입과 실행코드를 구분하기 위해 사용했던 키워드 in을 사용할 필요도 없다.

      ```swift
      //단축 인자 사용
      let reversed2 = names.sorted { return $0 > $1 }
      print(reversed2)  //["Holuck", "Cole", "Abraham"]
      ```

  - 암시적 반환 표현

    - 반환 값을 갖는 클로저이고 클로저 내부의 실행문이 단 한줄이라면, 암시적으로 실행문을 반환 값으로 사용할 수 있다.

      ```swift
      //암시적 반환 표현
      let reversed3 = names.sorted { $0 > $1 }
      print(reversed3) //["Holuck", "Cole", "Abraham"]
      ```

### 값 획득

클로저는 자신이 정의된 위치의 주변 문맥을 통해 상수나 변수를 획득할 수 있다. 값 획득을 통해 클로저는 주변에 정의한 상수나 변수가 더 이상 존재하지 않더라도 해당 상수나 변수의 값을 자신 내부에서 참조하거나 수정할 수 있다.

 ==> 클로저가 비동기 작업에 많이 사용되는 이유.

```swift
//값 획득
func makeIncrementer(forIncrement amount: Int) -> (() -> Int) {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}
```

여기서 makeIncrementer 함수의 리턴값은 () -> Int 즉 함수객체를 반환한다. 매개변수가 없고 Int형을 반환하는 함수를 반환 위의 코드에서는 내부에 있는 incrementer함수는 runningTotal과 amount 라는 변수를 가져다가 쓰고 있습니다 하지만

```swift
func incrementer() -> Int {
	runningTotal += amount
  return runningTotal
} // Error!!
```

이렇게 따로 밖으로 빼두면 당연히 runningTotal과 amount를 찾을 수 없어 잘못된 코드가 됩니다.

amount에 2 를 주면 값은 2 -> 4 -> 6 이렇게 호출할때마다 값이 올라가는 것을 볼 수 있습니다.

즉 각각의 incrementer함수는 언제 호출이 되더라도 자신만의 runningTotal 변수를 갖고 카운트 하게 됩니다. (자신만의 참조를 미리 획득했기 때문.)