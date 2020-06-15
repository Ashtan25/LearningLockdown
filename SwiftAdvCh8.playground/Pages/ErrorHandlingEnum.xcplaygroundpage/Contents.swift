//: [Previous](@previous)

import Foundation

enum HTTPError {
  case notFound404
  case forbidden403
}

enum ResultType<T> {
    case success(T)
    case faliure(HTTPError)
}

let resultType = ResultType.success("ASh")
let failure: ResultType<String> = ResultType.faliure(.notFound404)


func findSubDomain(subdomain: String) -> ResultType<String> {
    
    switch subdomain {
    case "business":
        return ResultType.faliure(.forbidden403)
    case "blog":
        return ResultType.faliure(.notFound404)
    default:
        return ResultType.success("Found Website")
    }
}

let result = findSubDomain(subdomain: "blog")

switch result {
    case let .success(subDomainName):
        print(subDomainName)
case let .faliure(errorType):
    switch errorType {
    case .forbidden403:
        print("Forbidden Error")
    case .notFound404:
        print("Not Found")
    }
}




























//: [Next](@next)
