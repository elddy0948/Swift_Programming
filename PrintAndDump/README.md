# Print()와 Dump()

print()는 Swift에서 콘솔 로그를 남기는 용도로 많이 사용합니다.  줄바꿈(\n)이 자동으로 삽입 되어있으며 콘솔에 간략한 정보를 나타내어 줍니다 반면에 dump() 역시 콘솔 로그를 남기는 용도이지만 print()에 비해서 좀 더 자세한 정보를 표시 해 줍니다.

print() => 출력하려는 인스턴스의 description 프로퍼티에 해당하는 내용을 출력.

dump() => 출력하려는 인스턴스의 자세한 내부 콘텐츠까지 출력.

```swift
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

```

 