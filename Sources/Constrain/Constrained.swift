import Foundation

@propertyWrapper
public struct Constrained<Value> where Value: Comparable {
    private let range: ClosedRange<Value>
    public var value: Value
    
    public init(initialValue: Value, _ range: ClosedRange<Value>) {
        self.range = range
        self.value = max(range.lowerBound, min(initialValue, range.upperBound))
    }

    public var wrappedValue: Value {
        get { value }
        set { value = max(range.lowerBound, min(newValue, range.upperBound)) }
    }
}
