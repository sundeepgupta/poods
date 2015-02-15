import Foundation

let kData: [String: String] = [
    "cow": "moo",
    "dog": "woof",
    "duck": "quack",
    "pig": "oink",
    "owl": "hoot",
    "sheep": "baa",
    "yak": "low"
]

public class Animal {
    public var species: String
    let sound: String
    
    init(species: String, sound: String) {
        self.species = species
        self.sound = sound
    }
    
    class func all(names: Array<String>) -> Array<Animal?> {
        return names.map({(name: String) -> Animal? in
            if let sound = kData[name] {
                return Animal(species: name, sound: sound)
            } else {
                return nil
            }
        })
    }
}

let names = ["pig"]
let animals = Animal.all(names)
let animal = animals[0]
animal?.species






