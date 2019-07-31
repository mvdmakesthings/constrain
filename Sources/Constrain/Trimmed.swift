import Foundation

@propertyWrapper public struct Trimmed {
    @Formatted({ $0.trimmingCharacters(in: .whitespacesAndNewlines) }) public var wrappedValue: String = ""

    public init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
