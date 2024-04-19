// Lift.swift

enum Direction {
    case up
    case down
}

final class Lift {
    
    private(set) var currentFloor: UInt
    
    init(currentFloor: UInt) {
        self.currentFloor = currentFloor
    }
    
    func move(sourceFloor: UInt, direction: Direction) -> Bool {
        switch direction {
        case .up:
            if sourceFloor >= currentFloor {
                currentFloor = sourceFloor
                return true
            } else {
                return false
            }
        case .down:
            if sourceFloor <= currentFloor {
                currentFloor = sourceFloor
                return true
            } else {
                return false
            }
        }
    }
}
