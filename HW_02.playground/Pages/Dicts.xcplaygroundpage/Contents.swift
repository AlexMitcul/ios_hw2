// MARK: Dictionaries


var studentGrades = [String: Int]()

// Adding student assessments
studentGrades["John Smith"] = 2
studentGrades["Anna Johnson"] = 4
studentGrades["Michael Davis"] = 5

// Updating a student's grade
studentGrades["John Smith"] = 5

func makeDecision(student studentName: String, grade: Int) {
  switch grade {
  case 3, 4, 5:
    print("Well done \(studentName)")
  case 1, 2:
    print("You are going to retake the test, \(studentName)")
  default:
    print("This grade is from another universe...")
  }
}

for (studentName, studentGrade) in studentGrades {
  makeDecision(student: studentName, grade: studentGrade)
}

// Adding three more students
studentGrades["Emily Wilson"] = 4
studentGrades["David Brown"] = 3
studentGrades["Olivia Thompson"] = 2

// Deleting a student's grade
studentGrades.removeValue(forKey: "Olivia Thompson")

// Average score of the whole group at the end of the exam
let totalGrade = studentGrades.values.reduce(0, +)
let averageGrade = totalGrade / studentGrades.count
print("Average grade of the whole group is \(averageGrade)")

