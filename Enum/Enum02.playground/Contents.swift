import Cocoa

//반복문과 열거형
enum coffees: CaseIterable {
    case americano
    case coldbrew
    case cafelatte
}

for coffee in coffees.allCases {
    print(coffee)
}
//americano
//coldbrew
//cafelatte


//Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var product: Barcode = .upc(123, 123, 123, 123)
print(product) // upc(123, 123, 123, 123)
product = .qrCode("ABCDSAFDCE")
print(product) // qrCode("ABCDSAFDCE")

//Raw Values
enum WeekDays: String {
    case mon = "월요일"
    case tue = "화요일"
    case wed = "수요일"
    case thu = "목요일"
    case fri = "금요일"
    case sat = "토요일"
    case sun
}
var today: WeekDays = .mon
print(today)    // mon
print(today.rawValue)   // 월요일
today = .sun
print(today)    // sun
print(today.rawValue)   // sun
today = WeekDays(rawValue: "수요일") ?? WeekDays(rawValue: "")!
print(today)    // wed
