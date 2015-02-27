import Foundation

class House {
    let lineStart = "This is"
    var innerPhrases = ["the malt that lay in",
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
    var endPhrase = "the house that Jack built.\n"
    
    init(random: Bool = false, double: Bool = false) {
        if random {
            self.innerPhrases = Shuffler().list(self.innerPhrases)
        }
        
        if double {
            self.innerPhrases = Doubler().list(self.innerPhrases)
            self.endPhrase = "the house that Jack built the house that Jack built.\n"
        }
    }
    
    func recite() -> String {
        var lines = [String]()
        for i in 1...self.innerPhrases.count+1 {
            let line = self.line(i)
            lines.append(line)
        }
        
        return "\n".join(lines)
    }
    
    
    func line(number: Int) -> String {
        var phrases = self.innerPhrases
        phrases.insert(self.endPhrase, atIndex: 0)
        var linePhrases = phrases[0...number-1].reverse()
        linePhrases.insert(self.lineStart, atIndex: 0)
        return " ".join(linePhrases)
    }
}

class Doubler {
    func list(list: Array<String>) -> Array<String> {
        return list.map({ (item: String) -> String in
            return item + " " + item
        })
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