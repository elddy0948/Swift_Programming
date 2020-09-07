import Swift

struct CoordinatePoint {
    var x: Int  //저장 프로퍼티(변수)
    var y: Int  //저장 프로퍼티(변수)
}
//구조체는 기본적으로 저장 프로퍼티를 매개변수로 갖는 이니셜라이저가 있다.
let holuckPoint: CoordinatePoint = CoordinatePoint(x: 0, y: 0)

class holuckInfo {
    let name: String //저장 프로퍼티(상수)
    var point: CoordinatePoint //저장 프로퍼티(변수)
    //프로퍼티 기본값을 지정해주지 않는다면 이니셜라이저를 따로 정의해주어야 한다.
    init(name: String, point: CoordinatePoint) {
        self.name = name
        self.point = point
    }
}
//사용자 정의 이니셜라이저를 호출해야한다.
//그렇지 않으면 프로퍼티 초깃값을 할당할 수 없기 때문에 인스턴스 생성이 불가능하다.
let hoPoint: holuckInfo = holuckInfo(name: "Holuck", point: holuckPoint)

