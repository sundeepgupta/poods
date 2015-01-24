import Foundation

struct Bottles {
    
    func song() -> String {
        return verses(high: 99, low: 0)
    }
    
    func verses(#high: Int, low: Int) -> String {
        var verses = [String]()
        let range = reverse(low...high)
        for i in range {
            verses.append(verse(i))
        }
        
        let joiner = "\n\n"
        return joiner.join(verses)
    }
    
    func verse(number: Int) -> String {
        switch number {
        case 0:
            return "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
        case 1:
            return "\(number) bottle of beer on the wall, \(number) bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall."
        case 2:
            return "\(number) bottles of beer on the wall, \(number) bottles of beer.\nTake one down and pass it around, \(number-1) bottle of beer on the wall."
        default:
            return "\(number) bottles of beer on the wall, \(number) bottles of beer.\nTake one down and pass it around, \(number-1) bottles of beer on the wall."
        }
    }
}
