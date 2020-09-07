import Swift

struct CoordinatePosition {
    var x: Int
    var y: Int
}

class myPosition {
    var point: CoordinatePosition? //옵셔널 사용
    let name: String
    init(name: String) {
        self.name = name
    }
}
let holuckPos: myPosition = myPosition(name: "Holuck")
//나중에 point값 할당.
holuckPos.point = CoordinatePosition(x: 5, y: 5)
