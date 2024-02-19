

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "Viajando a \(currentSpeed) km/h"
    }
    
    func makeNoise() {
        // do nothing, cada vehículo cado vehículo tiene su propio ruido
        print("El ruido depende del vehículo...")
    }
}

let someVehicle = Vehicle()
someVehicle.description

class Bicycle : Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 8
bicycle.description

class Tandem : Bicycle {
    var currentNumberOfPasengers = 0
}

var tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPasengers = 2
tandem.currentSpeed = 14
tandem.description

class Train: Vehicle {
    var numberOfWagons = 0
    
    override func makeNoise() {
        print("Chuu Chuuuu!!!")
    }
}

var train = Train()
train.makeNoise()


class Car : Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " en la marcha \(gear)"
    }
}

let car = Car()
car.currentSpeed = 50
car.gear = 3
car.description
