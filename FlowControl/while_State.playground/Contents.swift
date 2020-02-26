import Swift

var names: [String] = ["Kim", "Son", "Lee", "Park"]

while names.isEmpty == false {
    print("GoodBye \(names.removeFirst())")
}
//GoodBye Kim
//GoodBye Son
//GoodBye Lee
//GoodBye Park


//repeat - while
var names2: [String] = ["Kim", "Son", "Lee", "Park"]

repeat {
    print("GoodBye \(names2.removeFirst())")
} while names2.isEmpty == false
//GoodBye Kim
//GoodBye Son
//GoodBye Lee
//GoodBye Park


var names3: [String] = ["Kim", "Son", "Lee", "Park"]

nameLoop: for name in names3 {
    if {
        continue nameLoop
    }
    else{
        break nameLoop
    }
}
