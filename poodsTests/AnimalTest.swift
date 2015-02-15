import XCTest

class AnimalTest : XCTestCase {
    func testPig() {
        let names = ["pig"]
        let animal = Animal.all(names)[0]!
        XCTAssertEqual("pig", animal.species)
        XCTAssertEqual("oink", animal.sound)
        XCTAssertEqual("a pig", animal.species.articlize())
        XCTAssertEqual("an oink", animal.sound.articlize())
    }
    
    func testOwl() {
        let names = ["owl"]
        let animal = Animal.all(names)[0]!
        XCTAssertEqual("owl", animal.species)
        XCTAssertEqual("hoot", animal.sound)
        XCTAssertEqual("an owl", animal.species.articlize())
        XCTAssertEqual("a hoot", animal.sound.articlize())
    }
    
    func testPigAndOwl() {
        let names = ["pig", "owl"]
        let animals = Animal.all(names)
        XCTAssertEqual(animals.count, 2)
    }
    
    func testMissingAnimal() {
        let names = [""]
        XCTAssertNil(Animal.all(names)[0])
    }
    
    func testPigAndMissingAnimalAndOwl() {
        let names = ["pig", "", "owl"]
        let animals = Animal.all(names)
        XCTAssertEqual(animals.count, 3)
    }
}