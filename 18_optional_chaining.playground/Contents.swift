

class Person{
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 3
}

let idril = Person()

// force unwraping da error -> let roomCount = idril.residence!.numberOfRooms

if let roomCount = idril.residence?.numberOfRooms {
    print("La casa de Idril tiene \(roomCount) habitaciones")
} else {
    print("Idril aún no tiene casa :(")
}

idril.residence = Residence()

if let roomCount = idril.residence?.numberOfRooms {
    print("La casa de Idril tiene \(roomCount) habitaciones")
} else {
    print("Idril aún no tiene casa :(")
}


