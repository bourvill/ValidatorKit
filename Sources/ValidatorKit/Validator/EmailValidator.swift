import Foundation

public struct EmailValidator: Validator {
    private let value: String?
    private let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

    public init(_ value: String?) {
        self.value = value
    }

    public func validate() -> Bool {
        guard let value else {
            return false
        }

        return NSPredicate(format: "SELF MATCHES %@", emailRegEx)
            .evaluate(with: value)
    }
}
