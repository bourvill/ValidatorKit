public struct ValidatorKit {
    private var builder: (String?) -> Bool

    public init(@ValidatorBuilder builder: @escaping (String?) -> Bool) {
        self.builder = builder
    }

    public func validate(value: String?) -> Bool {
        builder(value)
    }
}

@resultBuilder public enum ValidatorBuilder {
    public static func buildBlock(_ components: Validator...) -> Bool {
        components.filter { $0.validate() }.count == components.count
    }
}
