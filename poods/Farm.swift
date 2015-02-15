class Farm {
    let animals: Array<Animal?>
    
    init(animals: Array<Animal?>) {
        self.animals = animals
    }
    
    func lyrics() -> String {
        var verses = [String]()
        for animal in self.animals {
            verses.append(self.verse(animal))
        }
        
        let joiner = "\n\n"
        return joiner.join(verses)
    }
    
    private func verse(animal: Animal?) -> String {
        let someAnimal: Singable
        
        if let a = animal {
            someAnimal = a
        } else {
            someAnimal = Nanimal()
        }
        
        return "Old MacDonald had a farm, E-I-E-I-O,\n" +
                "And on that farm he had \(someAnimal.species.articlize()), E-I-E-I-O,\n" +
                "With \(someAnimal.sound.articlize()) \(someAnimal.sound) here and \(someAnimal.sound.articlize()) \(someAnimal.sound) there,\n" +
                "Here \(someAnimal.sound.articlize()), there \(someAnimal.sound.articlize()), everywhere \(someAnimal.sound.articlize()) \(someAnimal.sound),\n" +
                "Old MacDonald had a farm, E-I-E-I-O."
    }
}