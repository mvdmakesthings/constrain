import XCTest
@testable import Constrain

final class LowercasedTests: XCTestCase {
    
    @Lowercased var string: String = "SWIFT"
    
    func testLowercased() {
        XCTAssert(string == "swift")
        string = "Swift"
        XCTAssert(string == "swift")
    }

    static var allTests = [
        ("testLowercased", testLowercased)
    ]
}
