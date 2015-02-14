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

    func container() -> String {
        return "bottles"
    }
    
    func pronoun() -> String {
        return "one"
    }
}

class Bottle0 : Bottle {
    init() {
        super.init(number: 0)
    }
    
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

class Bottle1 : Bottle {
    init() {
        super.init(number: 1)
    }
    
    override func container() -> String {
        return "bottle"
    }
    
    override func pronoun() -> String {
        return "it"
    }
}

class Bottle6 : Bottle {
    init() {
        super.init(number: 6)
    }
    
    override func quantity() -> String {
        return String(1)
    }
    
    override func container() -> String {
        return "six pack"
    }
}