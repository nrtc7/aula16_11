// Banco
// Operações:
//  Depósito
//  Saque
//  Ver o saldo

var balance: Double = 0

func showBalance() {
    print("Saldo atual: \(balance)")
}

func deposit(value: Double) -> Void {
    balance += value
}

func readNumber() -> Double? {
    if let str = readLine() {
        if let number = Double(str) {
            return number
        }
    }
    return nil
}

// 4) Fazer o menu
while true {
    guard let option = readLine() else {
        print("Não foi possível ler a opção.")
        break
    }
    
    if option == "0" {
        print("Tchau!")
        break
    }
    
    if option == "1" {
        showBalance()
    }
    
    if option == "2" {
        if let depositValue = readNumber() {
            deposit(value: depositValue)
        }
    }
    
    if option == "3" {
        if let withdrawValueString = readLine() {
            if let withdrawValue = Double(withdrawValueString) {
                balance -= withdrawValue
            }
        }
    }
    showBalance()
}
z
