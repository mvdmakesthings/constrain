import Foundation

@propertyWrapper public struct Uppercased {
    @Formatted({ $0.uppercased() }) public var wrappedValue: String = ""

    public init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
