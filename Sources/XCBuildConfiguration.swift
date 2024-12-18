import Foundation

public class XCBuildConfiguration: PBXBuildStyle {
    public enum PBXKeys: PBXKey {
        case name,
             baseConfigurationReference
    }
    
#if LAZY
    public lazy var name: String? = self.string(PBXKeys.name)
    public var baseConfigurationReference: PBXFileReference? = self.object(PBXKeys.baseConfigurationReference)
#else
    public var name: String? {
        self.string(PBXKeys.name)
    }
    
    public var baseConfigurationReference: PBXFileReference? {
        self.object(PBXKeys.baseConfigurationReference)
    }
#endif
    
    public override var comment: String? {
        self.name ?? "CopyFiles"
    }
}
