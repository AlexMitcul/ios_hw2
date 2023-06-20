# Homework Assignment Solution

This repository contains the solution to the homework assignment.

## Task 1: Tuple

In this task, a tuple is created for two people with the same data types and parameters. The values are accessed using indexes and parameters. Here's an example:

```swift
let person1 = (age: 25, name: "John", surname: "Doe")
let person2 = (age: 30, name: "Jane", surname: "Smith")

print(person1.0) // Accessing age of person1 using index
print(person2.age) // Accessing age of person2 using parameter
```

## Task 2: Days in Months

In this task, an array "daysInMonths" is created with the number of days in each month. Using a for loop and this array:

- The number of days in each month is printed.
- Another array with month names is used to print the month name along with the number of days.
- The same is done using an array of tuples with parameters (month name, number of days).
- The days are printed in reverse order (the original array order is not changed).
- The number of days remaining until the end of the year is calculated for a given date (month and day).

## Task 3: Student Grades

In this task, a dictionary "studentGrades" is created as a student journal, where the student's name and surname are keys, and the exam grade is the value.

- The student's exam grade is increased.
- If the grade is positive (4 or 5) or satisfactory (3), a congratulatory message is printed. If the grade is negative (1 or 2), the student is sent for a retake.
- Additional students are added as new classmates.
- One student is removed from the journal as they have been expelled.
- The average grade for the entire group is calculated based on the exam results.

Feel free to explore the code and adapt it to your needs!

```
