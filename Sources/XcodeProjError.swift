import Foundation

public enum XcodeProjError: Error {
    // Data not a dictionary
    case invalidData(object: Any),
         
         // Missing field
         fieldMissing(key: String),
         
         // Failed to read\
         failedToReadFile(error: Error),
         
         // object missing
         objectMissing(key: String, expectedType: Isa?)
    
}
