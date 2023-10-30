//: [Previous](@previous)

import Foundation


protocol Berry {
    var color: String { get }
}
class Blueberry: Berry {
    let color = "blue"
}
class Strawberry: Berry {
    let color = "red"
}

for berry in [Blueberry(), Strawberry()] {
    if berry is Blueberry {
        print("blueberry")
    }
    if let blueberry = berry as? Blueberry {
        print(blueberry.color)
    }
    if berry is Strawberry {
        print("strawberry")
    }
    if let strawberry = berry as? Strawberry {
        print(strawberry.color)
    }
}
