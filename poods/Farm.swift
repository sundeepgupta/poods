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
        var species = "<silence>"
        var sound = "<silence>"
        
        if let a = animal {
            species = a.species
            sound = a.sound
        }
        
        return "Old MacDonald had a farm, E-I-E-I-O,\n" +
                "And on that farm he had \(species.articlize()), E-I-E-I-O,\n" +
                "With \(sound.articlize()) \(sound) here and \(sound.articlize()) \(sound) there,\n" +
                "Here \(sound.articlize()), there \(sound.articlize()), everywhere \(sound.articlize()) \(sound),\n" +
                "Old MacDonald had a farm, E-I-E-I-O."
    }
}