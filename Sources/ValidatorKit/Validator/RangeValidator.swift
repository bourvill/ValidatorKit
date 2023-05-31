import Foundation

public struct RangeValidator: Validator {
    private let value: String?
    private let range: ClosedRange<Int>

    public init(_ value: String?, range: ClosedRange<Int>) {
        self.value = value
        self.range = range
    }

    public func validate() -> Bool {
        guard let value else {
            return false
        }

        return range.contains(value.count)
    }
}
