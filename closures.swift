
// uso de sorted

var names = ["Chris", "Alex", "SwiftBeta", "Blog", "Apple"]
 
var newnames = names.sorted { (firstValue, secondValue) -> Bool in
             return firstValue < secondValue
             }

print(newnames)

// other

var othernames = names.sorted { $0 < $1 }
print(othernames)

// other

var namesBy = names.sorted(by: <) 
print(namesBy)
 
// Closures and Function

 
func backward(stringOne: String, stringTwo: String) -> Bool {
    return stringOne > stringTwo
}

let namesSortedWithFunction = names.sorted(by: { backward(stringOne: $0, stringTwo: $1) })
print(namesSortedWithFunction)


// Other way
func backward(_ stringOne: String, _ stringTwo: String) -> Bool {
  return stringOne > stringTwo
}

let namesSortedWithFunction = names.sorted(by: backward)
print(namesSortedWithFunction)

 

func saveUser(name: String, completionBlock: (Bool...) -> Void ) {
  print("Saving user ...")
  completionBlock(true, false, true, false, true)
}

saveUser(name: "SwiftBeta") { Boolean in
  print(Boolean)
}
   
enum BackendError {
  case customError
}

func getDataFromBackend(status: String,
                       onSuccess: () -> Void,
                       onFailure: (BackendError) -> Void) {
  if status == "OK" {
    onSuccess()
  } else {
    onFailure(.customError)
  }
}
 
getDataFromBackend(status: "KO") {
  print("onSucces")
} onFailure: { (error) in
             print("onFailure \(error)")
} 
 
getDataFromBackend(status: "KO",
 onSuccess: {
     print("onSuccess")
 },
 onFailure: { (error) in
     print("onFailure \(error)")
 })
