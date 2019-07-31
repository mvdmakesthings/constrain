import XCTest
@testable import Constrain

final class TrimmedTests: XCTestCase {
    
    @Trimmed var string: String = " Swift "
    
    func testTrimmed() {
        XCTAssert(string == "Swift")
        string = " "
        XCTAssert(string.isEmpty)
    }

    static var allTests = [
        ("testTrimmed", testTrimmed)
    ]
}
