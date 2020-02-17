import Swift


//세트는 Array<Int> => [Int] 같은 축약형을 사용할 수 없음.
var names: Set<String> = Set<String>()
var names2: Set<String> = []

names = ["Apple", "Banana", "Holuck"]
print(names.isEmpty)    //false
print(names.count)  //3

names.insert("Melon")
print(names.count)  //4

print(names.remove("Holuck"))   //Holuck
print(names.remove("Cat"))  //nil

//세트 활용 - 집합연산
let numbers1: Set<Int> = [1,2,3,4,5]
let numbers2: Set<Int> = [2,4,6,7,8]

//교집합
let intersectSet: Set<Int> = numbers1.intersection(numbers2)
print(intersectSet) //[2, 4]

//여집합
let symmetricDiffSet: Set<Int> = numbers1.symmetricDifference(numbers2)
print(symmetricDiffSet) //[8, 6, 3, 5, 1, 7]

//합집합
let unionSet: Set<Int> = numbers1.union(numbers2)
print(unionSet) //[8, 1, 5, 6, 2, 3, 7, 4]

//차집합
let subtractSet: Set<Int> = numbers1.subtracting(numbers2)
print(subtractSet)  //[3, 5, 1]
print(unionSet.sorted())    //[1, 2, 3, 4, 5, 6, 7, 8]

let oneToTen: Set<Int> = [1,2,3,4,5,6,7,8,9,10]
let oneToFive: Set<Int> = [1,2,3,4,5]
let unionArray: Set<Int> = oneToTen.union(oneToFive)

print(oneToFive.isDisjoint(with: oneToTen)) //서로 배타적인가?  ==> false
print(oneToFive.isSubset(of: oneToTen)) //oneToFive가 oneToTen의 부분집합인가?  ==> true
print(unionArray.isSuperset(of: oneToTen))   //unionArray가 oneToTen의 전체집합인가?    ==> true
print(unionArray.isSuperset(of: oneToFive))   //unionArray가 oneToFive의 전체집합인가?  ==> true


