

class Ship {
    var name: String
    var year: Int
    var countryOfOrigin: String
    
    init(name: String, year: Int, countryOfOrigin: String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
    }
}

class CruiseShip: Ship {
    var maxCapacity: Int
    var oceanOfOperation: String
    var currentPassengerCount: Int = 0
    
    init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
        self.maxCapacity = maxCapacity
        self.oceanOfOperation = oceanOfOperation
        super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
    }
    
    func addPassenger() {
        if currentPassengerCount < maxCapacity {
            currentPassengerCount += 6
            print("Passenger added successfully.")
        } else {
            print("The ship is at max capacity. Cannot add more passengers.")
        }
    }
    
    func printPassengerCount() {
        print("Current Passenger Count: \(currentPassengerCount)")
    }
}


let cruiseShip1 = CruiseShip(name: "Aussi Queen", year: 2002, countryOfOrigin: "Australia", maxCapacity: 400, oceanOfOperation: "Atlantic")
print("Ship Name:", cruiseShip1.name)
print("Year Built:", cruiseShip1.year)
print("Country of Origin:", cruiseShip1.countryOfOrigin)
print("Max Capacity:", cruiseShip1.maxCapacity)
print("Ocean of Operation:", cruiseShip1.oceanOfOperation)

// Adding passengers
cruiseShip1.addPassenger()
cruiseShip1.addPassenger()
cruiseShip1.addPassenger()
cruiseShip1.addPassenger()/

cruiseShip1.printPassengerCount()
