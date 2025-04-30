struct Car{
    let model: String
    let numberOfSeats: Int
    
    private(set) var currentGear: Int
    
    init(model: String, numberOfSeats: Int, startingGear: Int = 1) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = max(1, min(startingGear, 10))
    }
    
    mutating func gearUp() {
        if currentGear < 10 {
            currentGear += 1
        } else {
            print("Already at maximum gear.")
        }
    }
    
    mutating func gearDown() {
        if currentGear > 1 {
            currentGear -= 1
        } else {
            print("Already at minimum gear.")
        }
    }
}
