# 연산자

스위프트의 연산자는 특정한 문자로 표현한 함수라 할 수 있음. 따라서 특정 연산자의 역할을 프로그래머의 의도대로 변경할 수도 있다.

- ###  연산자의 종류

  - 할당 연산자

    - 값을 할당할 때 사용하는 연산자

    - ```swift
      //할당 연산자
      let a: Int = 10
      let b: Int = a
      ```

  - 산술 연산자

    - 수학에서 쓰이는 연산자와 같은 역할 수행.

    - ```swift
      //부동소수점 나머지 타입 연산
      let number: Double = 5.0
      var result: Double = number.truncatingRemainder(dividingBy: 1.5)    // 0.5
      result = 12.truncatingRemainder(dividingBy: 2.5)    //2.0
      ```

  - 비교 연산자

    - 두 값을 비교할 때 사용

    - ```swift
      // 참조가 같다
      A === B
      // 참조가 같지 않다
      A !== B
      //패턴 매치
      A ~= B
      ```

  - 삼항 조건 연산자

    - 피연산자가 3 개인 삼항 조건 연산자.

    - ```swift
      //삼항 조건 연산자
      // Question ? A : B ==> Question이 참이면 A, 거짓이면 B를 리턴
      let num1: Int = 5
      let num2: Int = 2
      let answer: Int = num1 > num2 ? num1 : num2 // 5
      ```

  - 범위 연산자

    - 값(수)의 범위를 나타내고자 할 때 사용

    - ```swift
      //범위 연산자
      //폐쇄 범위 연산자
      for _ in 0...5 {
          // 0부터 5까지 (0과 5 포함)
      }
      //반폐쇄 범위 연산자
      for _ in 0..<5 {
          // 0부터 5까지 (0은 포함 5는 포함 안함)
      }
      //단방향 범위 연산자
      // A... ==> A이상의 수를 묶어 범위 표현 (A포함)
      // ...A ==> A이하의 수를 묶어 범위 표현 (A포함)
      // ..<A ==> A미만의 수를 묶어 범위 표현 (A미포함)
      ```

  - 부울 연산자

    -  !B : B의 참 거짓을 반전한다.
    -  A && B : A와 B의 불리언 AND 논리 연산
    -  A || B : A와 B의 불리언 OR 논리 연산

  - 비트 연산자

    - ~A : A의 비트를 반전한 결과를 반환
    - A & B : A와 B의 비트 AND 논리 연산을 실행
    -  A | B : A와 B의 비트 OR 논리 연산을 실행
    - A ^ B : A와 B의 비트 XOR 논리 연산을 실행
    - A >> B , A << B : A의 비트를 B만큼 비트를 시프트(이동)

  - 복합 할당 연산자

    - 할당 연산자와 다른 연산자가 하는 일을 한 번에 할 수 있도록 연산자를 결합할 수 있다.
    -  ex ) A += B , A <<= B , A |= B

  - 오버플로 연산자

    - 오버플로를 자동으로 처리해주는 연산자.
    - &+ : 오버플로에 대비한 덧셈 연산
    - &- : 오버플로에 대비한 뺄셈 연산
    - &* : 오버플로에 대비한 곱셈 연산

  - 기타 연산자

    - A ?? B : A가 nil이 아니면 A를 반환하고 A가 nil이면 B를 반환한다.
    - -A : A(수)의 부호를 변경
    - O! : O(옵셔널 개체)의 값을 강제로 추출
    - V? : V(옵셔널 값)를 안전하게 추출하거나, V(데이터 타입)가 옵셔널임을 표현

- ### 연산자 우선순위와 결합 방향

  - Swift에서는 연산자의 우선순위(Precedence)를 지정해 놓았다.
  - 또한 연산자가 연산하는 결합방향(Associativity)도 지정되어 있다.

- ### 사용자 정의 연산자

  - 전위 연산자 정의와 구현

    - ** 라는 전위 연산자 구현과 사용

    - ```swift
      prefix operator **
      
      prefix func ** (value: Int) -> Int {
          return value * value
      }
      let minusFive: Int = -5
      let sqrtMinusFive: Int = **minusFive
      print(sqrtMinusFive)    // 25
      ```

  - 후위 연산자 정의와 구현

    - Int타입 값 뒤에 ***를 붙이면 10을 더해주는 연산을 구현

    - 전위 연산자와 후위 연산자를 같이 사용하면 후위 연산을 먼저 실행한다.

    - ```swift
      postfix operator ***
      postfix func *** (value: Int) -> Int {
          return value + 10
      }
      let five: Int = 5
      let plusTen: Int = five***
      print(plusTen)  //15
      ```

  - 중위 연산자 정의와 구현

    - 중위 연산자는 우선순위 그룹을 명시해줄 수 있다.

    - ```swift
      //중위 연산자
      infix operator **** : MultiplicationPrecedence
      func **** (lhs: String, rhs: String) -> Bool {
          return lhs.contains(rhs)
      }
      let myName: String = "Holuck"
      let ho: String = "Ho"
      let isitTrue: Bool = myName **** ho
      print(isitTrue) // true
      ```

      

