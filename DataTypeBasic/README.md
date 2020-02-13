# 기본 데이터 타입

- ### 데이터 타입?

  - 데이터 타입은 프로그램 내에서 다뤄지는 데이터의 종류.
  - 스위프트의 기본 데이터 타입은 모두 구조체를 기반으로 구현되어 있다.
  - 스위프트의 모든 데이터 타입 이름은 첫 글자가 대문자로 시작. (대문자 카멜케이스)

- ### Int와 UInt (Integer and UnsignedInteger)

  - 정수 타입으로 Int는 부호를 포함한 정수 즉 + 와 - 를 가진 정수입니다. 반면에 UInt는 부호를 포함하지 않는, 0을 포함한 양의 정수를 나타냅니다. 

  - Int와 Uint 모두 각각 8비트, 16비트, 32비트, 64비트의 형태가 있습니다. 즉 저장할 수 있는 데이터의 크기에 따라 타입이 분리되어 있습니다.

  - ```swift
    let integer : Int = -100    // Integer는 음수 값 할당 가능!
    let unsignedInteger : UInt = 100    // UnsignedInteger는 음수 값 할당 불가능!
    
    // max와 min을 통해 최대값 최소값 확인 가능.
    print("Int의 최대 값: \(Int.max), Int의 최소 값: \(Int.min)") 
    print("UInt의 최대 값: \(UInt.max), UInt의 최소 값: \(UInt.min)")
    
    //  Int의 최대 값: 9223372036854775807, Int의 최소 값: -9223372036854775808
    //  UInt의 최대 값: 18446744073709551615, UInt의 최소 값: 0
    
    ```

    - 흥미로운 점은 최대 값을 보시면 UInt의 최대 값이 Int의 최대값의 2배입니다.

  - 또한 각 진수에 따라 정수를 표현할 수 있습니다.

    - 10진수 == 그냥 숫자.
    - 2진수 == 접두어 0b를 사용
    - 8진수 == 접두어 0o를 사용
    - 16진수 == 접두어 0x를 사용
    - ex ) 10진수 28을 2진수로 표현하면 ==> let binaryInt: Int = 0b11100

- ### Bool (Boolean)

  - Bool은 boolean 타입입니다. 참(true) 와 거짓(false)만 값으로 가집니다.

  - ```swift
    var boolean: Bool = true
    boolean.toggle() // toggle()이란 boolean의 값을 반전시킵니다.
    print(boolean) // false
    ```

- ### Float 와 Double

  - 부동 소수점을 사용하는 실수를 나타낼때 사용하는 Float와 Double!

  - 부동소수 타입은 정수 타입보다 훨씬 넓은 범위의 수를 표현 가능.

  - Swift에서는 64비트의 부동소수 표현을 하는 Double, 32비트의 부동소수 표현을 하는 Float가 있다.

  - Double은 최소 15자리의 십진수 표현 가능, Float는 6자리의 숫자까지만 표현 가능.

  - ```swift
    var floatValue : Float = 1234567890.1
    var doubleValue : Double = 1234567890.1
    
    print("FloatValue : \(floatValue) DoubleValue : \(doubleValue)")
    
    //FloatValue : 1.234568e+09 DoubleValue : 1234567890.1
    ```

    - Float는 6자리 숫자까지만 표현가능한데 위의 예제에서는 너무 많이 넣어서 출력 해보니 정확도가 떨어지는 모습을 볼 수 있다.

- ### Character

  - Character 타입은 '문자' 를 의미합니다. 하나의 문자를 표현할 수 있습니다.

  - ```swift
    let alphabetChar : Character = "A"
    let 한글문자 : Character = "ㄱ"
    
    print("Alphabet : \(alphabetChar), 한글 : \(한글문자)")   //  Alphabet : A, 한글 : ㄱ
    ```

    - 한글도 유니코드 문자에 속하므로 Swift코드의 변수 이름으로 사용 가능합니다. (신기신기..)

- ### String

  - String은 문자열(문자가 나열된 것.) 입니다. 

  - ```swift
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
    ```

  - 더 많은 기능을 코드로 확인해 봅시다

  - 연산자를 통한 문자열 비교

    - ```swift
      //  연산자를 통한 문자열 비교
      var isMyName : Bool = name == "Holuck"
      print(isMyName) // true
      isMyName = name == "holuck"
      print(isMyName) // false
      ```

  - 접두어, 접미어 확인

    - ```swift
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
      ```

  - 대소문자 변환

    - ```swift
      var convertedString : String = String()
      convertedString = name.uppercased()
      print(convertedString) //   HOLUCK
      convertedString = convertedString.lowercased()
      print(convertedString) //   holuck
      ```

  - 여러줄 쓰기

    - ```swift
      let myDream : String = """
          제 꿈은
          스위프트를 마스터 하는 것입니다 !!
      """
      print(myDream)
      //제 꿈은
      //스위프트를 마스터 하는 것입니다 !!
      ```

  - 특수 문자.

    - ```swift
      print("줄바꿈 \n 백슬래시 표현 \\ 큰따옴표 표현 \" 탭. \t 문자열이 끝났음을 알리는 \0")
      ```

  - Ant, AnyObject와 nil

    - Any는 스위프트의 모든 데이터 타입을 사용할 수 있다는 뜻. 어떤 종류의 데이터 타입이든지 상관없이 할당 가능.

    - AnyObject는 Any보다는 조금 한정된 의미로 클래스 인스턴스만 할당 가능.

    - ```swift
      var anyVar : Any = "thisIsString"
      anyVar = 100
      anyVar = 100.2
      ```

    - nil은 타입이 아닌 '없음'을 나타내는 Swift의 키워드. 변수나 상수에 값이 들어있지 않고 비어있음을 나타냄.

