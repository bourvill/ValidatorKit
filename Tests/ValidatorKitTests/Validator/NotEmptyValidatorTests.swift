import ValidatorKit
import XCTest

final class NotEmptyValidatorTests: XCTestCase {
    func testNotEmptyValidator() throws {
        XCTAssertTrue(NotEmptyValidator("test").validate())
        XCTAssertFalse(NotEmptyValidator("").validate())
        XCTAssertFalse(NotEmptyValidator(nil).validate())
    }
}
