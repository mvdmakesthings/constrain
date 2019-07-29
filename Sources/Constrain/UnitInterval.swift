import Foundation

@propertyWrapper
public struct UnitInterval<Value> where Value: FloatingPoint & Codable {
    @Constrained(0...1) public var wrappedValue: Value = .zero

    public init(initialValue: Value) {
        self.wrappedValue = initialValue
    }
    
    public init(from decoder: Decoder) throws {
        self.wrappedValue = try decoder.singleValueContainer().decode(Value.self)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(wrappedValue)
    }
}
