import XCTest

class HouseTest : XCTestCase {
    func testLine1() {
        let tale = House()
        let expected = "This is the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(1))
    }
    
    func S_testLine2() {
        let tale = House()
        let expected = "This is the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(2))
    }
    
    func S_testLine3() {
        let tale = House()
        let expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(3))
    }
    
    func S_testLine4() {
        let tale = House()
        let expected = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(4))
    }
    
    func S_testLine5() {
        let tale = House()
        let expected = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(5))
    }
    
    func S_testLine6() {
        let tale = House()
        let expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(6))
    }
    
    func S_testLine7() {
        let tale = House()
        let expected = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(7))
    }
    
    func S_testLine8() {
        let tale = House()
        let expected = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(8))
    }
    
    func S_testLine9() {
        let tale = House()
        let expected = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(9))
    }
    
    func S_testLine10() {
        let tale = House()
        let expected = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(10))
    }
    
    func S_testLine11() {
        let tale = House()
        let expected = "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(11))
    }
    
    func S_testLine12() {
        let tale = House()
        let expected = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.line(12))
    }
    
    func S_testAllLines() {
        let tale = House()
        let expected = "This is the house that Jack built.\n\n" +
            "This is the malt that lay in the house that Jack built.\n\n" +
            "This is the rat that ate the malt that lay in the house that Jack built.\n\n" +
            "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n\n" +
            "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n\n" +
            "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n\n" +
            "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n\n" +
            "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n\n" +
            "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n\n" +
            "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n\n" +
            "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n\n" +
        "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
        XCTAssertEqual(expected, tale.recite())
    }
}