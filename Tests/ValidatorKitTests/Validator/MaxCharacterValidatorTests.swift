import ValidatorKit
import XCTest

final class MaxCharacterValidatorTests: XCTestCase {
    func testMaxCharacterValidator() throws {
        XCTAssertTrue(MaxCharacterValidator("test", max: 5).validate())
        XCTAssertTrue(MaxCharacterValidator("", max: 4).validate())
        XCTAssertFalse(MaxCharacterValidator("test", max: 3).validate())
        XCTAssertFalse(MaxCharacterValidator(nil, max: 5).validate())
    }
}
