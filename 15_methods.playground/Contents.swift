
class Counter {
    var count = 0
    
    func increment() {
        self.count += 1
    }
    
    func increment(by amount: Int) {
        self.count += amount
    }
    
    func reset() {
        self.count = 0
    }
}

let counter = Counter()
counter.increment()
counter.increment(by: 5)
counter.reset()


struct Point {
    var x = 0.0, y = 0.0
    
    func isTotheRight(of x: Double) -> Bool {
        return self.x > x
    }
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point(x: 2, y: 32)
somePoint.moveBy(x: 2, y: -20)

class SomeClass {
    static func someMethod() {
        print("Ey someMethod!")
    }
}

SomeClass.someMethod()
