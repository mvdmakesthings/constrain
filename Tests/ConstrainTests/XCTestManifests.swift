import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ConstrainedTests.allTests),
        testCase(FormattedTests.allTests),
        testCase(TrimmedTests.allTests),
        testCase(UnitIntervalTests.allTests),
        testCase(UppercasedTests.allTests)
    ]
}
#endif
