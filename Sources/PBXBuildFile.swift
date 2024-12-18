import Foundation

public class PBXBuildFile: PBXProjectItem {
    public enum PBXKeys: PBXKey {
        case fileRef,
             productRef,
             settings
    }
    
#if LAZY
    public lazy var fileRef: PBXFileReference? = self.object(PBXKeys.fileRef)
    public lazy var productRef: XCSwiftPackageProductDependency? = self.object(PBXKeys.productRef)
    public lazy var settings: [String: Any]? = self.dictionary(PBXKeys.settings)
#else
    public var fileRef: PBXFileReference? {
        self.object(PBXKeys.fileRef)
    }
    
    public var productRef: XCSwiftPackageProductDependency? {
        self.object(PBXKeys.productRef)
    }
    
    public var settings: [String: Any]? {
        self.dictionary(PBXKeys.settings)
    }
#endif
}
