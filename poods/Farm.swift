class Farm {
    let animals: Array<Singable>
    
    init(animals: Array<Animal?>) {
        self.animals = animals.map({ (animal: Animal?) -> Singable in
            if let a = animal {
                return a
            } else {
                return Nanimal()
            }
        })
    }
    
    func lyrics() -> String {
        var verses = [String]()
        for animal in self.animals {
            verses.append(self.verse(animal))
        }
        
        let joiner = "\n\n"
        return joiner.join(verses)
    }
    
    private func verse(animal: Singable) -> String {
        return "Old MacDonald had a farm, E-I-E-I-O,\n" +
                "And on that farm he had \(animal.species.articlize()), E-I-E-I-O,\n" +
                "With \(animal.sound.articlize()) \(animal.sound) here and \(animal.sound.articlize()) \(animal.sound) there,\n" +
                "Here \(animal.sound.articlize()), there \(animal.sound.articlize()), everywhere \(animal.sound.articlize()) \(animal.sound),\n" +
                "Old MacDonald had a farm, E-I-E-I-O."
    }
}