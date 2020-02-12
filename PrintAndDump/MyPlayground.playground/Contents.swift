import Swift

struct whoAmI {
    let name : String
    let age : Int
}

class myBody {
    var height : Float = 0.0
    var weight : Float = 0.0
}

let holuck : whoAmI = whoAmI(name: "Holuck", age: 25)
let holuckBody : myBody = myBody()

holuckBody.height = 177.1
holuckBody.weight = 70.3

print(holuck) //whoAmI(name: "Holuck", age: 25)
dump(holuck) // __lldb_expr_9.whoAmI
            //  - name: "Holuck"
            //  - age: 25

print(holuckBody) //__lldb_expr_9.myBody
dump(holuckBody)  //__lldb_expr_9.myBody #0
                  // - height: 177.1
                  //- weight: 70.3
