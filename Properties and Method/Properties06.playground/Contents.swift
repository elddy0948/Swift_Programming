import Swift

class Account {
    var credit: Int = 0 {
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정.")
        }
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경!")
        }
    }
}
let myAccount: Account = Account()

//잔액이 0원에서 1000원으로 변경될 예정.
myAccount.credit = 1000
//잔액이 0원에서 1000원으로 변경!
