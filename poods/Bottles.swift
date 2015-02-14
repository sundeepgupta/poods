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
        let bottle = Bottle(number: number)
        let nextBottle = Bottle(number: bottle.next())
        
        return "\(capitalizedPhrase(bottle.containerDescription())) of beer on the wall, "
            + "\(bottle.containerDescription()) of beer.\n"
            + "\(bottle.action()), "
            + "\(nextBottle.containerDescription()) of beer on the wall."
    }
    

    
    // MARK: - Private
    
    private func capitalizedPhrase(phrase:String) -> String {
        let firstCharIndex = advance(phrase.startIndex, 1)
        let firstChar = phrase.substringToIndex(firstCharIndex).uppercaseString
        let firstCharRange = phrase.startIndex..<firstCharIndex
        return phrase.stringByReplacingCharactersInRange(firstCharRange, withString: firstChar)
    }
}
