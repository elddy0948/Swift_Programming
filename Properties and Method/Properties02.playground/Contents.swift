import Swift

struct CoordinatePoint {
    var x: Int = 0  //저장 프로퍼티
    var y: Int = 0  //저장 프로퍼티
}
//프로퍼티의 초깃값을 할당했다면 굳이 초깃값을 넘길 필요는 없다.
let holuckPosition: CoordinatePoint = CoordinatePoint()
let hoPosition: CoordinatePoint = CoordinatePoint(x: 5, y: 5)

class myPosition {
    let name: String = "EnterName"
    var position: CoordinatePoint = CoordinatePoint()
}
//클래스 역시 초깃값을 지정했다면 굳이 이니셜라이저를 사용하지 않아도 된다.
let classPosition: myPosition = myPosition()
