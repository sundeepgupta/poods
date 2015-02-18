class House {
    let phrases = [ "the house that Jack built.\n",
                    "the malt that lay in",
                    "the rat that ate",
                    "the cat that killed",
                    "the dog that worried",
                    "the cow with the crumpled horn that tossed",
                    "the maiden all forlorn that milked",
                    "the man all tattered and torn that kissed",
                    "the priest all shaven and shorn that married",
                    "the rooster that crowed in the morn that woke",
                    "the farmer sowing his corn that kept",
                    "the horse and the hound and the horn that belonged to" ]
    
    func recite() -> String {
        var lines = [String]()
        for i in 1...self.phrases.count {
            lines.append(self.line(i))
        }
        
        let joiner = "\n"
        return joiner.join(lines)
    }
    
    func line(number: Int) -> String {
        var linePhrases = self.phrases[0...number-1].reverse()
        linePhrases.insert("This is", atIndex: 0)
        let joiner = " "
        return joiner.join(linePhrases)
    }
}