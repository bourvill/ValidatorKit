import Foundation

public struct MaxCharacterValidator: Validator {
    private let value: String?
    private let max: Int

    public init(_ value: String?, max: Int) {
        self.value = value
        self.max = max
    }

    public func validate() -> Bool {
        guard let value else {
            return false
        }

        return value.count <= max
    }
}
