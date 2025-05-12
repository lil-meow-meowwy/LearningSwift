protocol Building{
    var numberOfRooms: Int { get set }
    var cost: Int { get set }
    var nameOfAgent: String { get set }
    
    func salesSummary()
}

struct House: Building {
    var numberOfRooms: Int
    var cost: Int
    var nameOfAgent: String
    
    func salesSummary() {
         print("House with \(numberOfRooms) rooms, costing $\(cost), listed by \(nameOfAgent).")
     }
}

struct Office: Building {
    var numberOfRooms: Int
    var cost: Int
    var nameOfAgent: String

    func salesSummary() {
        print("Office with \(numberOfRooms) rooms, costing $\(cost), listed by \(nameOfAgent).")
    }
}

let myHouse = House(numberOfRooms: 4, cost: 450_000, nameOfAgent: "Jane Smith")
myHouse.salesSummary()

let myOffice = Office(numberOfRooms: 10, cost: 1_200_000, nameOfAgent: "John Doe")
myOffice.salesSummary()
