// Lift.swift

enum Direction {
    case up
    case down
}

final class Lift {
    
    var doorsOpened: Bool = false
    var passengers: [Passenger] = []
    var moveTime: Int = 0
    
    private(set) var currentFloor: Int
    private var capacity: UInt = 0
    
    init(currentFloor: Int) {
        self.currentFloor = currentFloor
    }
    
    @discardableResult
    func callTo(callFloor: Int, direction: Direction) -> Bool {
        switch direction {
        case .up:
            if callFloor >= currentFloor {
                moveTo(destinationFloor: callFloor)
                return true
            } else {
                return false
            }
        case .down:
            if callFloor <= currentFloor {
                moveTo(destinationFloor: callFloor)
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
    
    func moveTo(destinationFloor: Int) {
        moveTime += abs(destinationFloor - currentFloor)
        currentFloor = destinationFloor
        doorsOpened = true
    }
}
