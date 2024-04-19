// Lift.swift

enum Direction {
    case up
    case down
}

final class Lift {
    
    var doorsOpened: Bool = false
    var passengers: [Passenger] = []
    
    private(set) var currentFloor: UInt
    private var capacity: UInt
    
    init(currentFloor: UInt, capacity: UInt) {
        self.currentFloor = currentFloor
        self.capacity = capacity
    }
    
    @discardableResult
    func callTo(callFloor: UInt, direction: Direction) -> Bool {
        switch direction {
        case .up:
            if callFloor >= currentFloor {
                currentFloor = callFloor
                doorsOpened = true
                return true
            } else {
                return false
            }
        case .down:
            if callFloor <= currentFloor {
                currentFloor = callFloor
                doorsOpened = true
                return true
            } else {
                return false
            }
        }
    }
    
    func passengersEnter(_ newPassengers: [Passenger]) {
        passengers.append(contentsOf: newPassengers)
    }
    
    func passengersLeave(_ leavingPassengers: [Passenger]) {
        passengers.removeAll { leavingPassengers.contains($0) }
    }
    
    func moveTo(destinationFloor: UInt) {
        currentFloor = destinationFloor
        doorsOpened = true
    }
}
