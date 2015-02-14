import Foundation

class Bottle {
    
    let number: Int
    
    init(number: Int) {
        self.number = number
    }
    
    
    func next() -> Int {
        if self.number == 0 {
            return 99
        } else {
            return self.number - 1
        }
    }
    
    func action() -> String {
        if self.number == 0 {
            return "Go to the store and buy some more"
        } else {
            return "Take \(self.pronoun()) down and pass it around"
        }
    }
    
    func containerDescription() -> String {
        return "\(self.quantity()) \(self.container())"
    }
    
    
    
    // MARK: - Private
    private func container() -> String {
        if self.number == 1 {
            return "bottle"
        } else {
            return "bottles"
        }
    }
    
    func quantity() -> String {
        if self.number == 0 {
            return "no more"
        } else {
            return String(self.number)
        }
    }
    
    private func pronoun() -> String {
        if self.number == 1 {
            return "it"
        } else {
            return "one"
        }
    }
    
    
}
