class Bottle {
    let number: Int
    
    init(number: Int) {
        self.number = number
    }
    
    func nextNumber() -> Int {
        return self.number - 1
    }
    
    func action() -> String {
        return "Take \(self.pronoun()) down and pass it around"
    }
    
    func containerDescription() -> String {
        return "\(self.quantity()) \(self.container())"
    }
    
    func quantity() -> String {
        return String(self.number)
    }

    private func container() -> String {
        if self.number == 1 {
            return "bottle"
        } else {
            return "bottles"
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

class Bottle0 : Bottle {
    override func nextNumber() -> Int {
        return 99
    }
    
    override func action() -> String {
        return "Go to the store and buy some more"
    }
    
    override func quantity() -> String {
        return "no more"
    }
}
