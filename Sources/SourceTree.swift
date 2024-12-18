import Foundation

public enum SourceTree {
    case absolute,
         group,
         relativeTo(SourceTreeFolder)
    
    public init?(sourceTreeString: String) {
        switch sourceTreeString {
        case "<absolute>":
            self = .absolute
            
        case "<group>":
            self = .group
            
        default:
            guard let sourceTreeFolder = SourceTreeFolder(rawValue: sourceTreeString) else {
                return nil
            }
            
            self = .relativeTo(sourceTreeFolder)
        }
    }
}
