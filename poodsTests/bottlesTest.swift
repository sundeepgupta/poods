import XCTest

class bottlesTest: XCTestCase {
    
    func testFirstVerse() {
        let bottles = Bottles()

        let expected = "99 bottles of beer on the wall, 99 bottles of beer.\nTake one down and pass it around, 98 bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verse(99))
    }
    
    func testAnotherVerse() {
        let bottles = Bottles()
        
        let expected = "89 bottles of beer on the wall, 89 bottles of beer.\nTake one down and pass it around, 88 bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verse(89))
    }
    
    func testVerse2() {
        let bottles = Bottles()
        
        let expected = "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verse(2))
    }
    
    func testVerse1() {
        let bottles = Bottles()
        
        let expected = "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verse(1))
    }
    
    func testVerse0() {
        let bottles = Bottles()
        
        let expected = "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verse(0))
    }
    
    func testCoupleVerses() {
        let bottles = Bottles()
        
        let expected = "99 bottles of beer on the wall, 99 bottles of beer.\nTake one down and pass it around, 98 bottles of beer on the wall.\n\n98 bottles of beer on the wall, 98 bottles of beer.\nTake one down and pass it around, 97 bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verses(high: 99, low: 98))
    }

    
    func testFewVerses() {
        let bottles = Bottles()
        
        let expected = "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n\n1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n\nNo more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
        
        XCTAssertEqual(expected, bottles.verses(high: 2, low: 0))
    }
    
    func testWholeSong() {
        let bottles = Bottles()
        
        XCTAssertEqual(bottles.verses(high: 99, low: 0), bottles.song())
    }
    
    
}