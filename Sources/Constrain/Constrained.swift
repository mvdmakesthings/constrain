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


@propertyWrapper public struct TestProp<Value: Comparable> {
    var _value2: Value
    
    public var wrappedValue: Value {
        get { _value2 }
        set { _value2 = newValue }
    }
    
    public init(wrappedValue: Value) {
        self._value2 = wrappedValue
    }
}


@propertyWrapper public struct TestProp2<Value: Comparable> {
    var _value2: Value
    
    public var wrappedValue: Value {
        get { _value2 }
        set { _value2 = newValue }
    }
    
    public init(wrappedValue: Value) {
        self._value2 = wrappedValue
    }
}
