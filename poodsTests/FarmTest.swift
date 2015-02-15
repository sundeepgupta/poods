import XCTest

class FarmTest : XCTestCase {
    func testPig() {
        let expected = "Old MacDonald had a farm, E-I-E-I-O,\n" +
                        "And on that farm he had a pig, E-I-E-I-O,\n" +
                        "With an oink oink here and an oink oink there,\n" +
                        "Here an oink, there an oink, everywhere an oink oink,\n" +
                        "Old MacDonald had a farm, E-I-E-I-O."
        
        let names = ["pig"]
        let animals = Animal.all(names)
        let farm = Farm(animals: animals)
        XCTAssertEqual(expected, farm.lyrics())
    }
    
    func testPigAndOwl() {
        let expected = "Old MacDonald had a farm, E-I-E-I-O,\n" +
                        "And on that farm he had a pig, E-I-E-I-O,\n" +
                        "With an oink oink here and an oink oink there,\n" +
                        "Here an oink, there an oink, everywhere an oink oink,\n" +
                        "Old MacDonald had a farm, E-I-E-I-O.\n\n" +
        
                        "Old MacDonald had a farm, E-I-E-I-O,\n" +
                        "And on that farm he had an owl, E-I-E-I-O,\n" +
                        "With a hoot hoot here and a hoot hoot there,\n" +
                        "Here a hoot, there a hoot, everywhere a hoot hoot,\n" +
                        "Old MacDonald had a farm, E-I-E-I-O."
        
        let names = ["pig", "owl"]
        let animals = Animal.all(names)
        let farm = Farm(animals: animals)
        XCTAssertEqual(expected, farm.lyrics())
    }
    
    func testPigAndNothingAndOwl() {
        let expected = "Old MacDonald had a farm, E-I-E-I-O,\n" +
                        "And on that farm he had a pig, E-I-E-I-O,\n" +
                        "With an oink oink here and an oink oink there,\n" +
                        "Here an oink, there an oink, everywhere an oink oink,\n" +
                        "Old MacDonald had a farm, E-I-E-I-O.\n\n" +
            
                        "Old MacDonald had a farm, E-I-E-I-O,\n" +
                        "And on that farm he had a <silence>, E-I-E-I-O,\n" +
                        "With a <silence> <silence> here and a <silence> <silence> there,\n" +
                        "Here a <silence>, there a <silence>, everywhere a <silence> <silence>,\n" +
                        "Old MacDonald had a farm, E-I-E-I-O.\n\n" +
        
                        "Old MacDonald had a farm, E-I-E-I-O,\n" +
                        "And on that farm he had an owl, E-I-E-I-O,\n" +
                        "With a hoot hoot here and a hoot hoot there,\n" +
                        "Here a hoot, there a hoot, everywhere a hoot hoot,\n" +
                        "Old MacDonald had a farm, E-I-E-I-O."
        
        let names = ["pig", "", "owl"]
        let animals = Animal.all(names)
        let farm = Farm(animals: animals)
        XCTAssertEqual(expected, farm.lyrics())
    }
}