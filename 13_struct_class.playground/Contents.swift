
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var frameRate = 0.0
    var interlaced = false
    var name: String?
}

var iPhoneResolution = Resolution()
iPhoneResolution.height = 100
iPhoneResolution.width = 480

var someVideoMode = VideoMode()
someVideoMode.frameRate = 60
someVideoMode.interlaced = true
someVideoMode.name = "Fixed"

iPhoneResolution
someVideoMode

let vga = Resolution(width: 640, height: 480)

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")
print("\(hd.width) x \(hd.height)")

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

tenEighty.interlaced = false

if tenEighty === alsoTenEighty {
    print("Son el mismo objeto")
} else {
    print("Son diferentes")
}

