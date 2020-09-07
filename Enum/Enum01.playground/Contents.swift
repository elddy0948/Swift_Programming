import Cocoa


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
