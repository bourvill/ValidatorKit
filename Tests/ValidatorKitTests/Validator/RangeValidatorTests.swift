import ValidatorKit
import XCTest

final class RangeValidatorTests: XCTestCase {
    func testRangeValidator() throws {
        XCTAssertTrue(RangeValidator("test", range: 0 ... 5).validate())
        XCTAssertTrue(RangeValidator("", range: 0 ... 5).validate())
        XCTAssertFalse(RangeValidator("test", range: 5 ... 10).validate())
        XCTAssertFalse(RangeValidator("test", range: 2 ... 3).validate())
        XCTAssertFalse(RangeValidator(nil, range: 0 ... 5).validate())
    }
}
