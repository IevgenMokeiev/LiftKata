// LiftKataTests.swift

@testable import LiftKata
import XCTest

class LiftKataTests: XCTestCase {
    
    private var lift: Lift!
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        lift = nil
        super.tearDown()
    }
    
    func test_whenCalledUpTo3_andLiftIs0_thenMoveToFloor() {
        lift = Lift(currentFloor: 0)
        XCTAssertTrue(lift.move(sourceFloor: 3, direction: .up))
        XCTAssertEqual(lift.currentFloor, 3)
    }
    
    func test_whenCalledUpTo0_andLiftIs3_thenDontMoveToFloor() {
        lift = Lift(currentFloor: 3)
        XCTAssertFalse(lift.move(sourceFloor: 0, direction: .up))
        XCTAssertEqual(lift.currentFloor, 3)
    }
    
    func test_whenCalledDownTo0_andLiftIs3_thenMoveToFloor() {
        lift = Lift(currentFloor: 3)
        XCTAssertTrue(lift.move(sourceFloor: 0, direction: .down))
        XCTAssertEqual(lift.currentFloor, 0)
    }
    
    func test_whenCalledDownTo3_andLiftIs0_thenDontMoveToFloor() {
        lift = Lift(currentFloor: 0)
        XCTAssertFalse(lift.move(sourceFloor: 3, direction: .down))
        XCTAssertEqual(lift.currentFloor, 0)
    }
}
