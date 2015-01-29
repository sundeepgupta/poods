import Foundation

let phrase = "bla"
let firstCharIndex = advance(phrase.startIndex, 1)
let firstChar = phrase.substringToIndex(firstCharIndex).uppercaseString
let firstCharRange = phrase.startIndex..<firstCharIndex
let newPhrase = phrase.stringByReplacingCharactersInRange(firstCharRange, withString: firstChar)









