## Constrain Library
Collection of useful property wrappers

## Property Wrappers
### Constrained
Clamps value to a range
```swift
@Constrained(0...14) var pH: Int
```

### UnitInterval
Clamps value to a range from 0 to 1
```swift
@UnitInterval var volume: Double
```

### Formatted
Formats a value with closure
```swift
@Formatted({ $0 + 1 }) var increment: Int
```

### Trimmed
Trims whitespace and new lines from string
```swift
@Trimmed var string: String
```

### Uppercased
Forcing uppercased string
```swift
@Uppercased var name: String
```

## Requirements
- Swift 5+

## Roadmap
- More string formatters
- Composition
- Codable propertyWrappers

## Contibutions
Feel free to contribute via fork/pull request to master branch. If you want to request a feature or report a bug please start a new issue.
