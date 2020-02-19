import Swift

//할당 연산자
let a: Int = 10
let b: Int = a

//부동소수점 나머지 타입 연산
let number: Double = 5.0
var result: Double = number.truncatingRemainder(dividingBy: 1.5)    // 0.5
result = 12.truncatingRemainder(dividingBy: 2.5)    //2.0

//// 참조가 같다
//A === B
//// 참조가 같지 않다
//A !== B
////패턴 매치
//A ~= B

//삼항 조건 연산자
// Question ? A : B ==> Question이 참이면 A, 거짓이면 B를 리턴
let num1: Int = 5
let num2: Int = 2
let answer: Int = num1 > num2 ? num1 : num2 // 5

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
