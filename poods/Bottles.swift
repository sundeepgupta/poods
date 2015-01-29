import Foundation

struct Bottles {
    
    func song() -> String {
        return verses(high: 99, low: 0)
    }
    
    func verses(#high:Int, low:Int) -> String {
        var verses = [String]()
        let range = reverse(low...high)
        for i in range {
            verses.append(verse(i))
        }
        
        let joiner = "\n\n"
        return joiner.join(verses)
    }
    
    func verse(number:Int) -> String {
        return "\(capitalizedPhrase((quantity(number: number)))) \(container(number: number)) of beer on the wall, "
            + "\(quantity(number: number)) \(container(number: number)) of beer.\n"
            + "\(action(number: number)), "
            + "\(quantity(number: successor(number: number))) \(container(number: successor(number: number))) of beer on the wall."
    }

    
    // MARK: - Private
    private func container(#number:Int) -> String {
        if number == 1 {
            return "bottle"
        } else {
            return "bottles"
        }
    }
    
    private func pronoun(#number:Int) -> String {
        if number == 1 {
            return "it"
        } else {
            return "one"
        }
    }
    
    private func quantity(#number:Int) -> String {
        if number == 0 {
            return "no more"
        } else {
            return String(number)
        }
    }
    
    private func action(#number:Int) -> String {
        if number == 0 {
            return "Go to the store and buy some more"
        } else {
            return "Take \(pronoun(number: number)) down and pass it around"
        }
    }
    
    private func successor(#number:Int) -> Int {
        if number == 0 {
            return 99
        } else {
            return number-1
        }
    }
    
    
    // Helper
    private func capitalizedPhrase(phrase:String) -> String {
        let firstCharIndex = advance(phrase.startIndex, 1)
        let firstChar = phrase.substringToIndex(firstCharIndex).uppercaseString
        let firstCharRange = phrase.startIndex..<firstCharIndex
        return phrase.stringByReplacingCharactersInRange(firstCharRange, withString: firstChar)
    }
    
    
}
