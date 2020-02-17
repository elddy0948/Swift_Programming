import Swift

//딕셔너리 선언
//typealias 이용
typealias StringIntDictionary = [String: Int]
var numberForName: Dictionary<String, Int> = Dictionary<String, Int>()
var numberForName2: [String: Int] = [String: Int]()
var numberForName3: StringIntDictionary = StringIntDictionary()
var numberForName4: [String: Int] = [:]

print(numberForName.isEmpty)    //true
print(numberForName.count)  //0

numberForName = ["String1" : 100, "String2" : 200, "String3" : 300]
print(numberForName["String1"]) //100
numberForName["String1"] = 150
print(numberForName["String1"]) //150

numberForName["max"] = 999
print(numberForName["max"]) //999

print(numberForName.removeValue(forKey: "String1")) //150
print(numberForName.removeValue(forKey: "String1")) //nil
print(numberForName["String1",default: 0])  //0
