import XCTest
@testable import Constrain

final class ConstrainedTests: XCTestCase {
    
    @Constrained(0...14) var pH: Int = -1
    
    func testConstrained() {
        XCTAssert(pH == 0)
        pH = -10
        XCTAssert(pH == 0)
        pH = 7
        XCTAssert(pH == 7)
        pH = 20
        XCTAssert(pH == 14)
    }

    static var allTests = [
        ("testConstrained", testConstrained)
    ]
}
