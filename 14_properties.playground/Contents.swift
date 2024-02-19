

// Stored properties

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

// lazy stored properties

class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter() // No se crea al crear DataManager sino cuando es                                           necesario
}


// Computed properties

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}


struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point { // esta es computed (calculada a partir de otras props)
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.height / 2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center
let initialSquareCenter = square.center
square.center = Point(x: 20, y: 20)
square.center

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let cuboidFive: Cuboid = Cuboid(width: 5, height: 5, depth: 5)
print("Cuboid 5 volume = \(cuboidFive.volume)")

// willSet - didSet

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) { // se ejecutará automáticamente antes de que vaya a cambiar
            print("El número de pasos va a subir hasta \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("El número de pasos ha incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 253
stepCounter.totalSteps = 37
stepCounter.totalSteps *= 100

