import Foundation

@propertyWrapper public struct UnitInterval<Value> where Value: FloatingPoint {
    @Constrained(0...1) public var wrappedValue: Value = .zero

    public init(wrappedValue: Value) {
        self.wrappedValue = wrappedValue
    }
}
