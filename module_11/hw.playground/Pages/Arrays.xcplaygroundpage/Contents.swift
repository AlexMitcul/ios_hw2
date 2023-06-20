// MARK: Arrays

let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let months = [
  "January",
  "February",
  "March",
  "April",
  "May",
  "June",
  "July",
  "August",
  "September",
  "October",
  "November",
  "December"
]
let monthData = [
  ("January", 31),
  ("February", 28),
  ("March", 31),
  ("April", 30),
  ("May", 31),
  ("June", 30),
  ("July", 31),
  ("August", 31),
  ("September", 30),
  ("October", 31),
  ("November", 30),
  ("December", 31)
]

// Days in every month

for (i, daysCount) in daysInMonths.enumerated() {
  print("In month with index \(i) is \(daysCount) days.")
}

// Name of month and days count
for i in 0..<daysInMonths.count {
  print("In \(months[i]) is \(daysInMonths[i]) days.")
}

// Using tuple
for monthData in monthData {
  print("In \(monthData.0) is \(monthData.1) days.")
}

// In reversed order
for daysCount in daysInMonths.reversed() {
  print("\(daysCount) days")
}

enum Month: String {
  case January
  case February
  case March
  case April
  case May
  case June
  case July
  case August
  case September
  case October
  case November
  case December
}

enum DateError: Error {
  case invalidDaysCount
}


func daysUntilEndOfYear(month: Month, day daysPassed: Int) throws -> Int {
  let DAYS_IN_YEAR = 365
  
  if daysPassed <= 0 {
    throw DateError.invalidDaysCount
  }
  
  switch month {
  case .January, .March, .May, .July, .August, .October, .December:
    if daysPassed > 31 {
      throw DateError.invalidDaysCount
    }
  case .April, .June, .September, .November:
    if daysPassed > 30 {
      throw DateError.invalidDaysCount
    }
  case .February:
    if daysPassed > 28 {
      throw DateError.invalidDaysCount
    }
  default:
    throw DateError.invalidDaysCount
  }
  
  var totalDaysPassed = daysPassed
  for currMonth in monthData {
    if currMonth.0 != month.rawValue {
      totalDaysPassed += currMonth.1
    } else {
      break
    }
  }
  
  return DAYS_IN_YEAR - totalDaysPassed
}

print(try daysUntilEndOfYear(month: .September, day: 23)) // 99
//print(try daysUntilEndOfYear(month: .January, day: 33)) // Error
