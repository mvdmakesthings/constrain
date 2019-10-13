import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(CodableTests.allTests),
        testCase(ConstrainedTests.allTests),
        testCase(FormattedTests.allTests),
        testCase(TrimmedTests.allTests),
        testCase(UnitIntervalTests.allTests),
        testCase(UppercasedTests.allTests),
        testCase(LowercasedTests.allTests),
        testCase(CapitalizedTests.allTests)
    ]
}
#endif
