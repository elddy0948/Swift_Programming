import Swift

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

//문자열 switch case
let myName: String = "Holuck"

switch myName {
case "Holuck":
    print("Oh Holuck!")
case "Hobbang":
    print("Oh Hobbang!")
    fallthrough
default:
    print("Nice to meet you!")
}
//Oh Holuck!


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

//where을 사용하여 switch case
let 직급: String = "사원"
let 연차: Int = 1
let 인턴인가: Bool = false

switch 직급 {
case "사원" where 인턴인가 == true:
    print("인턴입니다.")
case "사원" where 연차 < 2 && 인턴인가 == false:
    print("신입사원입니다.")
case "사원" where 연차 > 5:
    print("연식이 좀 된 사원입니다.")
default:
    print("직급이 무엇입니까?")
}


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
