import Swift

//struct CoordinatePoint {
//    var x: Int //저장 프로퍼티
//    var y: Int //저장 프로퍼티
//
//    //대칭점을 구하는 메서드 - 접근자
//    func oppositePoint() -> Self {
//        //Self 대신에 CoordinatePoint 사용 가능
//        return CoordinatePoint(x: -x, y: -y)
//    }
//    //대칭점을 설정하는 메서드 - 설정자
//    mutating func setOppositePoint(_ opposite: CoordinatePoint) {
//        x = -opposite.x
//        y = -opposite.y
//    }
//}
//var holuckPos: CoordinatePoint = CoordinatePoint(x: 10, y: 10)
//print(holuckPos)    //CoordinatePoint(x: 10, y: 10)
//print(holuckPos.oppositePoint())    //CoordinatePoint(x: -10, y: -10)

//struct CoordinatePoint {
//    var x: Int // 저장 프로퍼티
//    var y: Int // 저장 프로퍼티
//    var oppositePoint: CoordinatePoint {
//        //연산 프로퍼티
//        //접근자
//        get {
//            return CoordinatePoint(x: -x, y: -y)
//        }
//        //설정자
//        set(opposite){
//            x = -opposite.x
//            y = -opposite.y
//        }
//    }
//}
//var holuckPos: CoordinatePoint = CoordinatePoint(x: 10, y: 20)
//print(holuckPos)    //CoordinatePoint(x: 10, y: 20)
//print(holuckPos.oppositePoint)  //CoordinatePoint(x: -10, y: -20)
//holuckPos.oppositePoint = CoordinatePoint(x: 15, y: 10)
//print(holuckPos)    //CoordinatePoint(x: -15, y: -10)

struct CoordinatePoint {
    var x: Int // 저장 프로퍼티
    var y: Int // 저장 프로퍼티
    var oppositePoint: CoordinatePoint {
        //연산 프로퍼티
        //접근자
        get {
            return CoordinatePoint(x: -x, y: -y)
        }
    }
}

var holuckPos: CoordinatePoint = CoordinatePoint(x: 10, y: 10)
print(holuckPos)    //CoordinatePoint(x: 10, y: 10)
print(holuckPos.oppositePoint)  //CoordinatePoint(x: -10, y: -10)
//holuckPos.oppositePoint = CoordinatePoint(x: 20, y: 20) //Error!
