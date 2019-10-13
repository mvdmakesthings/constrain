import Foundation

@propertyWrapper public struct Lowercased {
    @Formatted({ $0.lowercased() }) public var wrappedValue: String = ""

    public init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
