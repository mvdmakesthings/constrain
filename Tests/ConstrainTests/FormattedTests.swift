import XCTest
@testable import Constrain

final class FormattedTests: XCTestCase {
    
    @Formatted({ $0.capitalized }) var firstName: String = "john"
    
    func testFormatted() {
        XCTAssert(firstName == "John")
    }

    static var allTests = [
        ("testFormatted", testFormatted)
    ]
}
