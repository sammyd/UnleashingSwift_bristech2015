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

# [fit] __Demo__

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
secondTitle += ", which has just got longer"
print(title)       // "This is a string"
print(secondTitle) // "This is a string, which has just got longer"
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
# Initialisation

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


---
#



---

# [fit] __Demo__



---
# Optionals


---
# Enums



---
# Pattern Matching


---
# Protocols


---
# Mutability
