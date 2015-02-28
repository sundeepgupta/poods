import Foundation

class House {
    let lineStart = "This is "
    var phrases = [
        "the house that Jack built",
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
        "the horse and the hound and the horn that belonged to"
    ]
    var lineEnd = ".\n"
    
    init(listChangers: Array<ListChanger> = [Keeper()]) {
        for listChanger in listChangers {
            self.phrases = listChanger.result(self.phrases)
        }
    }
    
    func recite() -> String {
        var lines = [String]()
        for i in 1...self.phrases.count {
            let line = self.line(i)
            lines.append(line)
        }
        
        return "\n".join(lines)
    }
    
    func line(number: Int) -> String {
        var phrases = self.phrases
        var linePhrases = phrases[0...number-1].reverse()
        let line = " ".join(linePhrases)
        return self.lineStart + line + self.lineEnd
    }
}

protocol ListChanger {
    func result(list: Array<String>) -> Array<String>
}

class Keeper : ListChanger {
    func result(list: Array<String>) -> Array<String> {
        return list;
    }
}

class Doubler : ListChanger {
    func result(list: Array<String>) -> Array<String> {
        return list.map({ (item: String) -> String in
            return item + " " + item
        })
    }
}

class Shuffler : ListChanger {
    func result(var list: Array<String>) -> Array<String> {
        let listCount = count(list)
        for i in 0..<(listCount - 1) {
            let j = Int(arc4random_uniform(UInt32(listCount - i))) + i
            swap(&list[i], &list[j])
        }
        return list
    }
}

class Reverser : ListChanger {
    func result(list: Array<String>) -> Array<String> {
        return list.reverse()
    }
}