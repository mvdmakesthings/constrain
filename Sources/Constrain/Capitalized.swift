import Foundation

@propertyWrapper public struct Capitalized {
    @Formatted({ $0.capitalized }) public var wrappedValue: String = ""
    
    public init(wrappedValue: String) {
        self.wrappedValue = wrappedValue
    }
}
