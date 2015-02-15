// DO NOT CHANGE THIS CODE !!!
// Assume Animals is part of an external framework that you cannot change.

let kData: [String: String] = [
    "cow": "moo",
    "dog": "woof",
    "duck": "quack",
    "pig": "oink",
    "owl": "hoot",
    "sheep": "baa",
    "yak": "low"
]


protocol Singable {
    var species: String { get }
    var sound: String { get }
}


// Making this a class because XCTAssert uses AnyObject? type for comparison and Structs don't conform to AnyObject?.
class Animal : Singable {
    let species: String
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


class Nanimal : Singable {
    let species = "<silence>"
    let sound = "<silence>"
}


extension String {
    func articlize() -> String {
        return self.article() + " " + self
    }
    
    private func article() -> String {
        if self.startsWithVowel() {
            return "an"
        } else {
            return "a"
        }
    }
    
    private func startsWithVowel() -> Bool {
        let range = self.rangeOfString("^[aeiou]", options: .RegularExpressionSearch)
        
        if let matchFound = range {
            return true
        } else {
            return false
        }
    }
}