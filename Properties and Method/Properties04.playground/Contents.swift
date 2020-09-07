import Swift

struct CoordinatePoint {
    var x: Int = 0
    var y: Int = 0
}
class Position {
    lazy var point: CoordinatePoint = CoordinatePoint()
    let name: String
    init(name: String) {
        self.name = name
    }
}
let holuckPos: Position = Position(name: "Holuck")
print(holuckPos.point)  //CoordinatePoint(x: 0, y: 0)
