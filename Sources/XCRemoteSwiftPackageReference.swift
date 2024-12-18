import Foundation

public class XCRemoteSwiftPackageReference: PBXObject {
    public enum PBXKeys: PBXKey {
        case repositoryURL,
             requirement
    }
    
#if LAZY
    public lazy var repositoryURL: String? = self.string(PBXKeys.repositoryURL)
    public lazy var requirement: [String: Any]? = dictionary(PBXKeys.requirement)
#else
    public var repositoryURL: String? {
        self.string(PBXKeys.repositoryURL)
    }
    
    public var requirement: [String: Any]? {
        dictionary(PBXKeys.requirement)
    }
#endif
    
}
