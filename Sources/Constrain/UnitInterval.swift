import Foundation

@propertyWrapper public struct UnitInterval<Value> where Value: FloatingPoint {
    @Constrained(0...1) public var wrappedValue: Value = .zero

    public init(wrappedValue: Value) {
        self.wrappedValue = wrappedValue
    }
}

extension UnitInterval: Codable where Value: Codable {
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(Value.self)
        self.init(wrappedValue: value)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.wrappedValue)
    }
}
