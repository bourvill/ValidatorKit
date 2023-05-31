import ValidatorKit
import XCTest

final class ValidatorKitTests: XCTestCase {
    func testValidatorKitShouldReturnTrue() throws {
        let result = ValidatorKit { value in
            NotEmptyValidator(value)
            MaxCharacterValidator(value, max: 6)
            RangeValidator(value, range: 3 ... 7)
        }

        XCTAssertTrue(result.validate(value: "value"))
    }

    func testValidatorKitShouldReturnFalse() throws {
        let result = ValidatorKit { value in
            NotEmptyValidator(value)
        }

        XCTAssertFalse(result.validate(value: ""))
    }
}
