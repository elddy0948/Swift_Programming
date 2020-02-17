import Swift

enum WeekDays: String {
    case mon = "월요일"
    case tue = "화요일"
    case wed = "수요일"
    case thu = "목요일"
    case fri = "금요일"
    case sat = "토요일"
    case sun = "일요일"
    //case mon = "월요일", tue = "화요일", ... 이렇게도 선언 가능!
}

//열거형 변수의 생성 및 값 변경
var todayIs: WeekDays = WeekDays.mon
//var todayIs: WeekDays = .mon 로도. 쓸수 있음.
todayIs = WeekDays.sun
print("오늘은 \(todayIs.rawValue)!!")  //오늘은 일요일!!


//연관값
enum TodayDinner {
    case pizza(dough: String, topping: String)
    case pasta(tase: String)
    case rice
}
var dinner: TodayDinner = TodayDinner.pizza(dough: "씬", topping: "불고기")
print(dinner.self)  //pizza(dough: "씬", topping: "불고기")
dinner = TodayDinner.pasta(tase: "토마토")
print(dinner)   //pasta(tase: "토마토")
dinner = .rice
print(dinner)   //rice

//항목 순회
enum City: CaseIterable {
    case Busan, Seoul, Daegu, Pohang
}
let allCases: [City] = City.allCases
print(allCases) //[__lldb_expr_33.City.Busan, __lldb_expr_33.City.Seoul, __lldb_expr_33.City.Daegu, __lldb_expr_33.City.Pohang]

//원시값을 가지면 쉼표(,)를 쓴다.
enum City2: String, CaseIterable {
    case Busan = "부산"
    case Seoul = "서울"
}
let allCases2: [City2] = City2.allCases
print(allCases2)   //[__lldb_expr_35.City2.Busan, __lldb_expr_35.City2.Seoul]

