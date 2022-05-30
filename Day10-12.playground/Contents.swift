import UIKit

//Classes
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Ppp")

//Class inheritance
class Dog1 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

//Overriding methods

class Vehicle {

  // method in the superclass
  func displayInfo() {
    print("Four Wheeler or Two Wheeler")
  }
}

// Car inherits Vehicle
class Car: Vehicle {

  override func displayInfo() {
    print("Four Wheeler")
  }
}

// create an object of the subclass
var car1 =  Car()
car1.displayInfo()

//Final
final class pup {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

//Copying objects

class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)

//Deinitializers
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


//Mutability

class Singer1 {
    var name = "Taylor Swift"
}

let taylor = Singer1()
taylor.name = "Sukk"
print(taylor.name)


//Day11

//Protocols
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

//Protocol inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}
//Employee protocol that brings them together in one protocol

protocol Employee: Payable, NeedsTraining, HasVacation { }

//Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

//Protocol extensions

let pythons = ["Aaa", "Bbb", "Ccc", "Fff", "Ddd", "Ddd"]
let beatles = Set(["Jjj", "Ppp", "Ggg", "Rr"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

//Protocol-oriented programming

protocol Identifiable1 {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User1: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()

//Day12

//Unwrapping optionals
var name: String? = nil

name = "Sukanya"
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

//Unwrapping with guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

//Force unwrapping

let str = "5"
let num3 = Int(str)

let num4 = Int(str)!

//Nil coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

print(user)

//Optional chaining

let names = ["John", "Paul", "George", "Ringo"]

let beatle = names.first?.uppercased()

//
