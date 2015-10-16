//: [Previous](@previous)
//: # Moving Forward


//: ## Enums
//: Raw Values
enum Activity: String {
  case Running
  case Swimming
  case Cycling
}

let cycling = Activity.Cycling.rawValue
let swimming = Activity.init(rawValue: "Swimming")

//: Associated Values
enum BillingItem {
  case PhoneCall(minutes: Int)
  case Data(bytes: Int)
  case SMS(number: Int)
}

let text = BillingItem.SMS(number: 34)
let call = BillingItem.PhoneCall(minutes: 10)


//: Recursive
enum ArithmeticExpression {
  case Number(Int)
  indirect case Addition(ArithmeticExpression, ArithmeticExpression)
  indirect case Multiplication(ArithmeticExpression, ArithmeticExpression)
}


let seven = ArithmeticExpression.Number(6)
let two = ArithmeticExpression.Number(2)
let sum = ArithmeticExpression.Addition(seven, two)
let product = ArithmeticExpression.Multiplication(sum, ArithmeticExpression.Number(3))



//: ## Pattern Matching

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

evaluate(product)


func greeting(name: String) -> String {
  switch name {
  case "Dave":
    return "Pretty sure you still don't exist"
  case "Sam":
    return "Hi handsome"
  default:
    return "Hello \(name)"
  }
}

greeting("Dave")
greeting("Sam")
greeting("Esme")

//: ## Optionals

let names = ["Anna", "Brian", "Charlie", "Esme"]

func findIndexOfName(name: String) -> Int? {
  for (index, testName) in names.enumerate() {
    if testName == name {
      return index
    }
  }
  return .None
}

findIndexOfName("Anna")
findIndexOfName("Dave")

let flatNumbers = ["12A", "1", "1234", "56"]

if let annasIndex = findIndexOfName("Anna") {
  flatNumbers[annasIndex]
}

func leaveMailFor(name: String) -> String {
  guard let nameIndex = findIndexOfName(name) else { return "Please leave mail at reception" }
  return "Leave mail for \(name) at \(flatNumbers[nameIndex])"
}

leaveMailFor("Dave")




//: ## Protocols
protocol Ordered {
  func precedes(other: Self) -> Bool
}


class Number : Ordered {
  var value: Double = 0
  func precedes(other: Number) -> Bool {
    return value < other.value
  }
}



//: [Next](@next)
