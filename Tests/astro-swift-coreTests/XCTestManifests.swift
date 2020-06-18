import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(astro_swift_coreTests.allTests),
    ]
}
#endif
