import Foundation

@propertyWrapper
public struct UnitInterval<Value: FloatingPoint> {
    @Constrained(0...1) public var wrappedValue: Value = .zero

    public init(initialValue: Value) {
        self.wrappedValue = initialValue
    }
}
