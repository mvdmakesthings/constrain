import XCTest
@testable import Constrain

final class UnitIntervalTests: XCTestCase {
    
    @UnitInterval var volume: Double = -0.2
    
    func testUnitInterval() {
        XCTAssert(volume == 0)
        volume = -10
        XCTAssert(volume == 0)
        volume = 0.8
        XCTAssert(volume == 0.8)
        volume = 1.2
        XCTAssert(volume == 1.0)
    }

    static var allTests = [
        ("testUnitInterval", testUnitInterval)
    ]
}
