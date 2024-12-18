import Foundation

public enum FieldKey: String {
    case isa
    
    case objects
    case rootObject
    
    case mainGroup
}

extension XcodeProjError {
    static func fieldKeyMissing(_ key: FieldKey) -> XcodeProjError {
        .fieldMissing(key: key.rawValue)
    }
}
