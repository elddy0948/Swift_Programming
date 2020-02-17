import Swift

var array1: [String] = ["item1", "item2", "item3"]
var array2: Array<String> = ["item4","item5","item6"]//위의 선언과 같은 의미

var emptyArray: [Any] = [Any]()
var emptyArray2: [Any] = Array<Any>()   //위의 선언과 같은 의미.

var emptyArray3: [Any] = []

print(emptyArray3.isEmpty)  //true
print(array1.count) //3


var array3: [String] = ["item1", "item2", "item3"]
print(array3[0])    //item1
array3[0] = "item3"
print(array3[0])    //item3

array3.append("item4")
array3.append(contentsOf: ["item5", "item6"])
array3.insert("item1", at: 1)
array3.insert(contentsOf: ["item10","item11"], at: 3)
print(array3)   //["item3", "item1", "item2", "item10", "item11", "item3", "item4", "item5", "item6"]

print(array3.index(of: "item1")!)   //1
print(array3.first!)    //item3
print(array3.last!) //item6

let firstItem = array3.removeFirst()
let lastItem = array3.removeLast()
let indexZero = array3.remove(at: 0)

print("first : \(firstItem), last : \(lastItem), index0 : \(indexZero)")    //first : item3, last : item6, index0 : item1


