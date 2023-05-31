import Foundation

public struct NotEmptyValidator: Validator {
    private let value: String?

    public init(_ value: String?) {
        self.value = value
    }

    public func validate() -> Bool {
        guard let value else {
            return false
        }

        return !value.isEmpty
    }
}
