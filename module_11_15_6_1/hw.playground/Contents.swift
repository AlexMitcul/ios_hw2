

enum HTTPError: Error {
  case badRequest
  case notFound
  case internalServerError
  
  var description: String {
    switch self {
    case .badRequest:
      return "400 Bad Request"
    case .notFound:
      return "404 Not Found"
    case .internalServerError:
      return "500 Internal Server Error"
    }
  }
}

var error = HTTPError.internalServerError

do {
  switch error {
  case .badRequest:
    throw HTTPError.badRequest
  case .notFound:
    throw HTTPError.notFound
  case .internalServerError:
    throw HTTPError.internalServerError
  }
} catch HTTPError.badRequest {
  print(HTTPError.badRequest.description)
} catch HTTPError.notFound {
  print(HTTPError.notFound.description)
} catch HTTPError.internalServerError {
  print(HTTPError.internalServerError.description)
}


func checkError(error: HTTPError) throws -> String {
  switch error {
  case .badRequest:
    throw HTTPError.badRequest
  case .notFound:
    throw HTTPError.notFound
  case .internalServerError:
    throw HTTPError.internalServerError
  }
}

do {
  try checkError(error: error)
} catch HTTPError.badRequest {
  print(HTTPError.badRequest.description)
} catch HTTPError.notFound {
  print(HTTPError.notFound.description)
} catch HTTPError.internalServerError {
  print(HTTPError.internalServerError.description)
}



func checkTypes<T, E>(_ a: T, _ b: E) {
  if (type(of: a) == type(of: b)) {
    print("Yes")
  } else {
    print("No")
  }
}

checkTypes(42, 42.0)
checkTypes("42", "42")

enum TypeError: Error {
  case equal
  case notEqual
  
  var description: String {
    switch self {
    case .equal:
      return "Equal"
    case .notEqual:
      return "Not equal"
    }
  }
}

func checkTypesThrows<T, E>(_ a: T, _ b: E) throws {
  if (type(of: a) == type(of: b)) {
    throw TypeError.equal
  } else {
    throw TypeError.notEqual
  }
}

do {
  try checkTypesThrows(42, 42)
//  try checkTypesThrows(21, "21")
} catch TypeError.equal {
  print(TypeError.equal.description)
} catch TypeError.notEqual {
  print(TypeError.notEqual.description)
}



func check<T: Equatable>(_ a: T, _ b: T) {
  if (a == b) {
    print("Parameters are equal")
  } else {
    print("Parameters aren't equal")
  }
}

check(42, 21)
