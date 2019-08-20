import Foundation

@propertyWrapper public struct Constrained<Value: Comparable> {
    public var value: Value
    public var range: ClosedRange<Value>
    
    public var wrappedValue: Value {
        get { value }
        set { value = max(range.lowerBound, min(newValue, range.upperBound)) }
    }
    
    public init(wrappedValue: Value, _ range: ClosedRange<Value>) {
        self.range = range
        self.value = max(range.lowerBound, min(wrappedValue, range.upperBound))
    }
}
