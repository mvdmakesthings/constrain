import Foundation

@propertyWrapper public struct Formatted<Value> {
    public var value: Value
    public var formatter: (Value) -> Value
    
    public var wrappedValue: Value {
        get { value }
        set { value = formatter(newValue) }
    }
    
    public init(wrappedValue: Value, _ formatter: @escaping (Value) -> Value) {
        self.formatter = formatter
        self.value = formatter(wrappedValue)
    }
}
