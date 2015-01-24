import XCTest

class bottlesTest: XCTestCase {
    
    func ___testFirstVerse() {
        let bottles = Bottles()

        let expected = "99 bottles of beer on the wall, 99 bottles of beer.\nTake one down and pass it around, 98 bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verse(99), "pass")
    }
    
    func ___testAnotherVerse() {
        let bottles = Bottles()
        
        let expected = "89 bottles of beer on the wall, 89 bottles of beer.\nTake one down and pass it around, 88 bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verse(89), "pass")
    }
    
    func ___testVerse2() {
        let bottles = Bottles()
        
        let expected = "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verse(2), "pass")
    }
    
    func ___testVerse1() {
        let bottles = Bottles()
        
        let expected = "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verse(1), "pass")
    }
    
    func ___testVerse0() {
        let bottles = Bottles()
        
        let expected = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verse(0), "pass")
    }
    
    func ___testFewVerses() {
        let bottles = Bottles()
        
        let expected = "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n\n1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n\nNo more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verses(x: 2, y: 0), "pass")
    }
    
    func ___testWholeSong() {
        let bottles = Bottles()
        
        XCTAssertEqual(bottles.verses(x: 99, y: 0), bottles.song(), "pass")
    }
    
    
}