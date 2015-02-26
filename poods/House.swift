import Foundation

class House {
    let lineStart = "This is"
    let innerPhrases = ["the malt that lay in",
        "the rat that ate",
        "the cat that killed",
        "the dog that worried",
        "the cow with the crumpled horn that tossed",
        "the maiden all forlorn that milked",
        "the man all tattered and torn that kissed",
        "the priest all shaven and shorn that married",
        "the rooster that crowed in the morn that woke",
        "the farmer sowing his corn that kept",
        "the horse and the hound and the horn that belonged to"]
    let endPhrase = "the house that Jack built.\n"
    let shuffler: Shuffler
    
    init(shuffler: Shuffler = Shuffler()) {
        self.shuffler = shuffler
    }
    
    func recite() -> String {
        var lines = [String]()
        for i in 1...self.innerPhrases.count+1 {
            lines.append(self.line(i))
        }
        
        return "\n".join(lines)
    }
    
    func line(number: Int) -> String {
        return self.line(number, phrases: self.innerPhrases)
    }
    
    func randomRecite() -> String {
        var lines = [String]()
        let phrases = self.shuffler.list(self.innerPhrases)
        for i in 1...self.innerPhrases.count+1 {
            lines.append(self.line(i, phrases: phrases))
        }
        
        return "\n".join(lines)
    }
    
    func randomLine(number: Int) -> String {
        var shuffled = self.shuffler.list(self.innerPhrases)
        return self.line(number, phrases: shuffled)
    }
    
    private func line(number: Int, var phrases: Array<String>) -> String {
        phrases.insert(self.endPhrase, atIndex: 0)
        var linePhrases = phrases[0...number-1].reverse()
        linePhrases.insert(self.lineStart, atIndex: 0)
        return " ".join(linePhrases)
    }
    
}

class Shuffler {
    func list(var list: Array<String>) -> Array<String> {
        let listCount = count(list)
        for i in 0..<(listCount - 1) {
            let j = Int(arc4random_uniform(UInt32(listCount - i))) + i
            swap(&list[i], &list[j])
        }
        return list
    }
}