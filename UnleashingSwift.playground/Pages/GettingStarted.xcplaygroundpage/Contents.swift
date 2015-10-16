//: # Unleashing Swift
//: This page of the playground serves to get you up to speed with Swift concepts as quickly as possible

//: ## Mutability

let twelve = 12
//twelve = 13

var thirteen = 13
thirteen = 12
//thirteen = 13.0


//: ## Value / Reference types


var title = "This is a string"
var secondTitle = title
secondTitle += ", which has just got longer"
print(title)
print(secondTitle)


//: ## Functions

func square(value: Int) -> Int {
  return value * value
}

square(4)

func exponentiate(value: Int, power: Int) -> Int {
  return power > 0 ? value * exponentiate(value, power: power-1) : 1
}

exponentiate(2, power: 4)

func curryPower(power: Int)(_ value: Int) -> Int {
  return exponentiate(value, power: power)
}

let cube = curryPower(3)

cube(3)

//: ## Extensions

extension Int {
  func toThePower(power: Int) -> Int {
    return exponentiate(self, power: power)
  }
}

2.toThePower(5)


//: ## Closures

func asyncHello(name: String, callback: (reply: String) -> ()) {
  callback(reply: "Hello \(name)")
}

asyncHello("sam") {
  let shouty = $0.uppercaseString
  print(shouty)
}


//: ## Functional Tinge

let scores = [1,2,4,5,3,5,7,2,2,6,8,2,3,6,2,3,5]

let cubedScores = scores.map { cube($0) }
cubedScores

let largeScores = scores.filter { $0 > 5 }
largeScores

let meanScore = scores.reduce(0) { $0 + Double($1) } / Double(scores.count)
meanScore



//: [Next](@next)



