# [fit] Unleashing
# [fit] *Swift*

---


![original](img/sams_face.jpg)

# [fit] @iwantmyrealname


---

# [fit] *Choose*

# your own

# [fit] *Adventure*

---
# [fit] **swift**

---

## fast
## modern
## safe
## interactive


---

## Strong typing
## Mutability
## Value Types
## ARC

---

# Some code

```swift
var arr = [3, 4, 1, 6, 2, 5];

arr.sort();

arr; //= ??
```

### What's the langauge?
### and the result?

---
# Javascript

```javascript
var arr = [3, 4, 1, 6, 2, 5];

arr.sort();

arr; //= [1, 2, 3, 4, 5, 6]
```

---
# Swift

```swift
var arr = [3, 4, 1, 6, 2, 5];

arr.sort();

arr; //= [3, 4, 1, 6, 2, 5]
```


---
# [fit] getting
# [fit] __started__

---
# Getting Started

- Mutability
- Value types
- Classes / Structs
- Functions
- Extensions
- Closures

---
# Mutability

```swift
let twelve = 12
//twelve = 13

var thirteen = 13
thirteen = 12
//thirteen = 13.0
```

---
# Value Types

```swift
var title = "This is a string"
var secondTitle = title
secondTitle += ", extended"
print(title)       // "This is a string"
print(secondTitle) // "This is a string, extended"
```

---
# Classes

- Reference types
- Inheritance / Dynamic Dispatch

```swift
class Vehicle {
  var maxSpeed: Double
}

class Car: Vehicle {
  var numberOfWheels: Int
}
```

---
# Structs

- Value types
- No inheritance
- Immutable by default

```swift
struct Point3D {
  let x: Double
  let y: Double
  let x: Double
}
```

---
# Class Initialisation

1. All stored properties
2. super.init() / self.init()
3. Change inherited properties
4. Call instance methods / access `self`

---
# Functions

```swift
func square(value: Int) -> Int {
  return value * value
}
```

```swift
func exp(value: Int, power: Int) -> Int {
  return power > 0 ? value * exp(value, power: power-1) : 1
}
```

```swift
func curryPower(power: Int)(_ value: Int) -> Int {
  return exponentiate(value, power: power)
}
let cube = curryPower(3)
cube(3) //= 27
```

---
# Extensions

- Add functionality to types

```swift
extension Int {
  func toThePower(power: Int) -> Int {
    return exponentiate(self, power: power)
  }
}

2.toThePower(5)
```

---
# Closures

```swift
typealias Callback = (reply: String) -> ()

func asyncHello(name: String, callback: Callback) {
  callback(reply: "Hello \(name)")
}
```


---
# Functional Tinge

- Functions are 1st class
- `map`, `reduce`, `filter` on `CollectionType`
- TLO implemented

```swift
let scores = [1, 2, 4, 5, 3, 5]
let cubedScores = scores.map { cube($0) }
              //= [1, 8, 64, 125, 27, 125]
```

---

# [fit] __"modern"__
# [fit] concepts

---
# Modern Concepts

- Enums
- Pattern Matching
- Optionals
- Protocols

---
# Enums

- Raw values
- Associated values
- Equivalent to mapping `||`
- Recursive enums

```swift
enum Activity: String {
  case Running
  case Swimming
  case Cycling
}
```

---
# Pattern Matching

- Concept from functional languages
- Part of `if` and `switch`

```swift
func evaluate(expresion: ArithmeticExpression) -> Int {
  switch expresion {
  case .Number(let value):
    return value
  case .Addition(let left, let right):
    return evaluate(left) + evaluate(right)
  case .Multiplication(let left, let right):
    return evaluate(left) * evaluate(right)
  }
}
```

---
# Optionals

- Handling of nil
- Just an enum with some syntactic sugar

```swift
enum Optional<Wrapped> {
  case None
  case Some(Wrapped)
}
```

---

# [fit] **?**!**??**



---
# Protocols

The problems with classes:

- Inheritance
- Implicit sharing
- Lose type relationships


---
# Protocols
## (a.k.a. Interfaces)

- Supports value types
- Can add functionality to existing types
- No instance data available
- Can include default implementations


---
# [fit] Other
# [fit] Stuff


---
# Other Stuff

- Interoperability
- Tuples
- Generics
- Error Handling
- Playgrounds

---
# [fit] the
# [fit] **future**

---
# [fit] **Open**
# [fit] source

---
# [fit] how can
# [fit] I **play**?


---
# [fit] buy a
# [fit] **proper** computer

---
# [fit] **or** wait

---
> you become a **better programmer** by **playing** with other lanugages
-- Me, just now

---
# [fit] go forth
# [fit] and **play**

### @iwantmyrealname
### github.com/sammyd
