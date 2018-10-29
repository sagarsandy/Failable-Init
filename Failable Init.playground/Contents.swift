import UIKit



// Failable init
// Initilaization of an object may fail sometimes..


class Course {
    
    let name : String
    
    init?(name: String) {
        
        if name.isEmpty {
            return nil
        }
        
        self.name = name
    }
}

let objC = Course(name: "")   // If we don't pass empty value, the initialization will fail.

// You have to unwrap the object here, because it is an optional object
//objC!.name  // Force unwrapping  --> gives error becuase of empty object.

if let newObjC = objC {
    print(newObjC.name)
} else {
    print("No object found...")
}


