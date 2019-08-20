import XCTest
@testable import Constrain

final class CodableTests: XCTestCase {
    
    struct Values: Codable {
        @UnitInterval var unitInterval: Double = 3
    }
    
    func testCodable() {
        let string = """
            { "unitInterval": 4.0, "ph": 22 }
        """
        
        let values = try! JSONDecoder().decode(Values.self, from: string.data(using: .utf8)!)
        XCTAssert(values.unitInterval == 1.0)
        
        let data = try! JSONEncoder().encode(values)
        let jsonString = String(data: data, encoding: .utf8)!
        XCTAssert(jsonString == "{\"unitInterval\":1}")
    }

    static var allTests = [
        ("testCodable", testCodable)
    ]
}
