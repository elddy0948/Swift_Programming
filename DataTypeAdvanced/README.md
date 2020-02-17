# Advanced DataType

- ### 데이터 타입 안심

  - Swift는 타입에 굉장히 민감하고 엄격.

  - 서로 다른 타입끼리 데이터 교환은 꼭 타입캐스팅 (형 변환)을 거친다.

  - Swift는 컴파일 시 타입을 확인하는 타입 확인을 사용합니다. 타입 확인을 통해 여러 타입을 섞어 사용할 때 발생할 수 있는 런타임 오류를 피할 수 있다.

  - ```swift
    var name = "Holuck" // 타입 추론으로 name 의 타입은 String으로 결정된다.
    name = 100 //   Error!
    ```

- ### 타입 별칭

  - Swift는 기본으로 제공하는 데이터 타입이든, 사용자가 임의로 만든 데이터 타입이든 이미 존재하는 데이터 타입에 임의로 다른 이름을 부여할 수 있다.

  - ```swift
    typealias IamInt = Int
    typealias IamIntToo = Int
    typealias IamString = String
    
    let temp : IamInt = 100 // Int 자료형과 같은 역할
    var temp2 : IamIntToo = 100 // Int 자료형과 같은 역할
    let myName : IamString = "Holuck" // String 자료형과 같은 역할.
    ```

- ### 튜플 (Tuple)

  - 튜플은 프로그래머 마음대로 만드는 타입.

  - '저장된 데이터의 묶음'

  - 일정 타입의 나열만으로 튜플 타입을 생성해줄 수 있음.

  - ```swift
    var myInfo : (String, Int, Double) = ("Holuck", 25, 177.1)
    
    typealias MyInfoTuple = (name : String, age : Int, height : Double)
    
    var holuck : MyInfoTuple = ("Holuck", 25, 177.1)
    
    print("이름 : \(holuck.name)\n나이 : \(holuck.1)\n키 : \(holuck.height)")
    //이름 : Holuck
    //나이 : 25
    //키 : 177.1
    holuck.age = 20
    holuck.2 = 180.0
    ```

- ### 컬렉션형

  - Swift 는. 튜플 외에도 많은 수의 데이터를 묶어서 저장하고 관리할 수 있는 컬렉션 타입을 제공.

  - 배열

    - 배열은 같은 타입의 데이터를 일렬로 나열한 후 순서대로 저장하는 형태의 컬렉션 타입.

    - let 키워드를 사용해 선언하면 변경할 수 없는 배열이 된다. var 키워드를 사용하여 선언하면 변경 가능한 배열.

    - ```swift
      var array1: [String] = ["item1", "item2", "item3"]
      var array2: Array<String> = ["item4","item5","item6"]//위의 선언과 같은 의미
      
      var emptyArray: [Any] = [Any]()
      var emptyArray2: [Any] = Array<Any>()   //위의 선언과 같은 의미.
      
      var emptyArray3: [Any] = []
      
      print(emptyArray3.isEmpty)  //true
      print(array1.count) //3
      ```

    - ```swift
      var array3: [String] = ["item1", "item2", "item3"]
      print(array3[0])    //item1
      array3[0] = "item3"
      print(array3[0])    //item3
      
      array3.append("item4")
      array3.append(contentsOf: ["item5", "item6"])
      array3.insert("item1", at: 1)
      array3.insert(contentsOf: ["item10","item11"], at: 3)
      print(array3)   //["item3", "item1", "item2", "item10", "item11", "item3", "item4", "item5", "item6"]
      
      print(array3.index(of: "item1")!)   //1
      print(array3.first!)    //item3
      print(array3.last!) //item6
      
      let firstItem = array3.removeFirst()
      let lastItem = array3.removeLast()
      let indexZero = array3.remove(at: 0)
      
      print("first : \(firstItem), last : \(lastItem), index0 : \(indexZero)")    //first : item3, last : item6, index0 : item1
      ```

  - 딕셔너리

    - 딕셔너리는 요소들이 순서 없이 키와 값의 쌍으로 구성되는 컬렉션 타입. 키 = 유일한 식별자

    - 하나의 딕셔너리 안의 키는 같은 이름을 중복해서 사용할 수 없음.

    - ```swift
      //딕셔너리 선언
      //typealias 이용
      typealias StringIntDictionary = [String: Int]
      var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()
      var numberForName2: [String: Int] = [String: Int]()
      var numberForName3: StringIntDictionary = StringIntDictionary()
      var numberForName4: [String: Int] = [:]
      
      print(numberForName.isEmpty)    //true
      print(numberForName.count)  //0
      
      numberForName = ["String1" : 100, "String2" : 200, "String3" : 300]
      print(numberForName["String1"]) //100
      numberForName["String1"] = 150
      print(numberForName["String1"]) //150
      
      numberForName["max"] = 999
      print(numberForName["max"]) //999
      
      print(numberForName.removeValue(forKey: "String1")) //150
      print(numberForName.removeValue(forKey: "String1")) //nil
      print(numberForName["String1",default: 0])  //0
      ```

  - 세트

    - 세트는 같은 타입의 데이터를 순서 없이 하나의 묶음으로 저장하는 형태의 컬렉션 타입.

    - 세트 내의 값은 모두 유일한 값으로 중복된 값이 존재하지 않음.

    - 순서가 중요하지 않거나 각 요소가 유일한 값이어야 하는 경우 사용

    - 해시 가능한 값 (Hashable 프로토콜을 따른다)이 들어와야 한다.

    - ```swift
      //세트는 Array<Int> => [Int] 같은 축약형을 사용할 수 없음.
      var names: Set<String> = Set<String>()
      var names2: Set<String> = []
      
      names = ["Apple", "Banana", "Holuck"]
      print(names.isEmpty)    //false
      print(names.count)  //3
      
      names.insert("Melon")
      print(names.count)  //4
      
      print(names.remove("Holuck"))   //Holuck
      print(names.remove("Cat"))  //nil
      ```

    - ```swift
      //세트 활용 - 집합연산
      let numbers1: Set<Int> = [1,2,3,4,5]
      let numbers2: Set<Int> = [2,4,6,7,8]
      
      //교집합
      let intersectSet: Set<Int> = numbers1.intersection(numbers2)
      print(intersectSet) //[2, 4]
      
      //여집합
      let symmetricDiffSet: Set<Int> = numbers1.symmetricDifference(numbers2)
      print(symmetricDiffSet) //[8, 6, 3, 5, 1, 7]
      
      //합집합
      let unionSet: Set<Int> = numbers1.union(numbers2)
      print(unionSet) //[8, 1, 5, 6, 2, 3, 7, 4]
      
      //차집합
      let subtractSet: Set<Int> = numbers1.subtracting(numbers2)
      print(subtractSet)  //[3, 5, 1]
      print(unionSet.sorted())    //[1, 2, 3, 4, 5, 6, 7, 8]
      ```

    - ```swift
      let oneToTen: Set<Int> = [1,2,3,4,5,6,7,8,9,10]
      let oneToFive: Set<Int> = [1,2,3,4,5]
      let unionArray: Set<Int> = oneToTen.union(oneToFive)
      
      print(oneToFive.isDisjoint(with: oneToTen)) //서로 배타적인가?  ==> false
      print(oneToFive.isSubset(of: oneToTen)) //oneToFive가 oneToTen의 부분집합인가?  ==> true
      print(unionArray.isSuperset(of: oneToTen))   //unionArray가 oneToTen의 전체집합인가?    ==> true
      print(unionArray.isSuperset(of: oneToFive))   //unionArray가 oneToFive의 전체집합인가?  ==> true
      ```

- ### 열거형

  - 열거형은 연관된 항목들을 묶어서 표현할 수 있는 타입.

  - 프로그래머가 정의해준 항목 값 외에는 추가/수정이 불가함.

  - Swift의 열거형은 enum이라는 키워드로 선언 가능.

    - ```swift
      enum WeekDays: String {
          case mon = "월요일"
          case tue = "화요일"
          case wed = "수요일"
          case thu = "목요일"
          case fri = "금요일"
          case sat = "토요일"
          case sun = "일요일"
          //case mon = "월요일", tue = "화요일", ... 이렇게도 선언 가능!
      }
      
      //열거형 변수의 생성 및 값 변경
      var todayIs: WeekDays = WeekDays.mon
      //var todayIs: WeekDays = .mon 로도. 쓸수 있음.
      todayIs = WeekDays.sun
      print("오늘은 \(todayIs.rawValue)!!")  //오늘은 일요일!!
      ```

    - ```swift
      //연관값
      enum TodayDinner {
          case pizza(dough: String, topping: String)
          case pasta(tase: String)
          case rice
      }
      var dinner: TodayDinner = TodayDinner.pizza(dough: "씬", topping: "불고기")
      print(dinner.self)  //pizza(dough: "씬", topping: "불고기")
      dinner = TodayDinner.pasta(tase: "토마토")
      print(dinner)   //pasta(tase: "토마토")
      dinner = .rice
      print(dinner)   //rice
      ```

  - 항목 순회

    - 열거형의 이름 뒤에 콜론(:)을 붙이고 CaseIterable프로토콜을 붙여준다.

    - ```swift
      //항목 순회
      enum City: CaseIterable {
          case Busan, Seoul, Daegu, Pohang
      }
      let allCases: [City] = City.allCases
      print(allCases) //[__lldb_expr_33.City.Busan, __lldb_expr_33.City.Seoul, __lldb_expr_33.City.Daegu, __lldb_expr_33.City.Pohang]
      
      //원시값을 가지면 쉼표(,)를 쓴다.
      enum City2: String, CaseIterable {
          case Busan = "부산"
          case Seoul = "서울"
      }
      let allCases2: [City2] = City2.allCases
      print(allCases2)   //[__lldb_expr_35.City2.Busan, __lldb_expr_35.City2.Seoul]
      ```

  - 순환 열거형

    - 항목의 연관값이 열거형 자신의 값이고자 할 때 사용.
    - indirect 키워드 사용!
    - 특정 항목에만 한정하고 싶으면 case 앞에 indirect붙이고, 열거형 전체에 적용하고 싶다면 enum앞에 indirect를 붙인다.