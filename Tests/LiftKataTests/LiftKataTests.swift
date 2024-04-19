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
        XCTAssertTrue(lift.callTo(callFloor: 3, direction: .up))
        XCTAssertEqual(lift.currentFloor, 3)
    }
    
    func test_whenCalledUpTo0_andLiftIs3_thenDontMoveToFloor() {
        lift = Lift(currentFloor: 3)
        XCTAssertFalse(lift.callTo(callFloor: 0, direction: .up))
        XCTAssertEqual(lift.currentFloor, 3)
    }
    
    func test_whenCalledDownTo0_andLiftIs3_thenMoveToFloor() {
        lift = Lift(currentFloor: 3)
        XCTAssertTrue(lift.callTo(callFloor: 0, direction: .down))
        XCTAssertEqual(lift.currentFloor, 0)
    }
    
    func test_whenCalledDownTo3_andLiftIs0_thenDontMoveToFloor() {
        lift = Lift(currentFloor: 0)
        XCTAssertFalse(lift.callTo(callFloor: 3, direction: .down))
        XCTAssertEqual(lift.currentFloor, 0)
    }
    
    func test_whenPassengerRequestsFloor_thenDelivers() {
        lift = Lift(currentFloor: 3)
        lift.moveTo(destinationFloor: 2)
        XCTAssertEqual(lift.currentFloor, 2)
    }
    
    func test_whenLiftArrives_thenDoorsOpened() {
        lift = Lift(currentFloor: 3)
        lift.callTo(callFloor: 0, direction: .down)
        XCTAssertTrue(lift.doorsOpened)
    }
}
