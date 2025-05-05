class Animal{
    var legs:Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog:Animal{
    func speak() -> String {
        return "Woof!"
    }
}

class Cat:Animal{
    var isTame:Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        
        super.init(legs: 4)
    }
    
    func speak() -> String {
        return "Meow!"
    }
}

class Corgi:Dog{
    override func speak() -> String {
        return "Bark!"
    }
}

class Poodle:Dog{
    override func speak() -> String {
        return "Barrrrk!"
    }
}

class Persian:Cat{
    init(){
        super.init(isTame: true)
    }
    
    override func speak() -> String {
        return "Meeeow."
    }
}

class Lion:Cat{
    init(){
        super.init(isTame: false)
    }
    
    override func speak() -> String {
        return "Rrrrr!"
    }
}
