import Foundation

public class XCSwiftPackageProductDependency: PBXObject {
    public enum PBXKeys: PBXKey {
        case productName,
             package
    }
    
#if LAZY
    public lazy var productName: String? = self.string(PBXKeys.productName)
    public lazy var package: XCRemoteSwiftPackageReference? = self.object(PBXKeys.productName)
#else
    public var productName: String? {
        self.string(PBXKeys.productName)
    } // but not ""
    
    public var package: XCRemoteSwiftPackageReference? {
        self.object(PBXKeys.productName)
    }
#endif
}
