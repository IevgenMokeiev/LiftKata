//  Passenger.swift

import Foundation

class Passenger: Equatable {
    let desiredFloor: UInt
    
    private var id = UUID()
    
    init(desiredFloor: UInt) {
        self.desiredFloor = desiredFloor
    }
    
    static func == (lhs: Passenger, rhs: Passenger) -> Bool {
        lhs.id == rhs.id
    }
}
