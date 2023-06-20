
// MARK: Tuples

let firstPerson = (age: 21, name: "Peter", surname: "Smith")
let secondPerson = (age: 42, name: "Andrew", surname: "Williams")

firstPerson.0
firstPerson.1
firstPerson.2

secondPerson.age
secondPerson.name
secondPerson.surname

func printPersonInfo(of person: (age: Int, name: String, surname: String)) {
  print("\(person.name) \(person.surname), \(person.age) years old.")
}

//printPersonInfo(of: firstPerson)
//printPersonInfo(of: secondPerson)
