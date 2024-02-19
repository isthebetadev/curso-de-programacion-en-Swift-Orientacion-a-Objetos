


struct Fahrenheit {
    var temperature: Double
    
    init() {
        self.temperature = 32
    }
    
    init(fromFarenheit fahrenheit: Double) {
        self.temperature = (fahrenheit - 32) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        self.temperature = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
        self.temperature = celsius
    }
    
}

var f1 = Fahrenheit()
var f2 = Fahrenheit(fromFarenheit: 15)
var f3 = Fahrenheit(fromKelvin: 287)
let bodyTemperature = Fahrenheit(37)

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGrey = Color(white: 0.5)

class SurveyQuestion {
    var text: String
    var response: String?
    
    init(text: String) {
        self.text = text
    }
    
    func ask() {
        print(text)
    }
}

let q1 = SurveyQuestion(text: "¿Te gusta programar?")
q1.ask()
q1.response = "Si, me encanta"


// Designado -> desigando super clase
// Conveniencia -> Otro init de la misma clase
// El último init que se llame siempre debe ser designado

class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) ruedas"
    }
}

let vehicle = Vehicle()
vehicle.description

class Bicycle: Vehicle {
    override init() {
        super.init() // corre el init del padre
        numberOfWheels = 2 // definimos el nuestro para sobrescribir
    }
}

let bicycle = Bicycle()
bicycle.description

class Hoverboard: Vehicle {
    var color: String
    init(color: String) {
        self.color = color // esto es inicializador por conveniencia
        // aqui se llama implícitamente a super.init()
    }
    override var description: String {
        return "\(super.description) en el color \(color)"
    }
}

let hoverboard =  Hoverboard(color: "silver")
hoverboard.description


enum TemperatureUnit {
    case kelvin, celsius, fahrenheit
    init? (symbol: Character) {
        switch symbol {
            case "K":
                self = .kelvin
            case "C":
                self = .celsius
            case "F":
                self = .fahrenheit
            default:
                return nil
        }
    }
}

let someUnit = TemperatureUnit(symbol: "X")

class Bank {
    static var coinsInBank = 1_000
        static func distribute(coins numberOfCoinsRequested: Int) -> Int {
            let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
            coinsInBank -= numberOfCoinsToVend
            return numberOfCoinsToVend
        }
        static func receive(coins: Int) {
            coinsInBank += coins
        }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}

var playerOne: Player? = Player(coins: 100)

Bank.coinsInBank
playerOne!.win(coins: 2000)
Bank.coinsInBank
playerOne = nil
Bank.coinsInBank
















