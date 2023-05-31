import ValidatorKit
import XCTest

final class EmailValidatorTests: XCTestCase {
    func testMaxCharacterValidator() throws {
        XCTAssertTrue(EmailValidator("test@test.fr").validate())
        XCTAssertFalse(EmailValidator("test").validate())
    }
}
