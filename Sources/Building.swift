//  Building.swift

import Foundation

class Building {
    let floors : [Floor]
    let lift: Lift
    
    init(floors: [Floor], lift: Lift) {
        self.floors = floors
        self.lift = lift
    }
}
