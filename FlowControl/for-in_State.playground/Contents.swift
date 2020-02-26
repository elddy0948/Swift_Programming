import Swift

for i in 0...5 {
    print(i) // 0 1 2 3 4 5
}


//기본 데이터 타입의 for-in 반복문 사용
let myPhone: [String: Int] = ["iPhone8+": 100, "GalaxyS20": 50]
for items in myPhone {
    print(items)
}
//(key: "iPhone8+", value: 100)
//(key: "GalaxyS20", value: 50)

for (key, value) in myPhone {
    print("\(key) : \(value)")
}
//iPhone8+ : 100
//GalaxyS20 : 50

let names: Set<String> = ["Kim", "Lee", "Park", "Son"]
for name in names {
    print(name)
}
//Park
//Son
//Lee
//Kim
