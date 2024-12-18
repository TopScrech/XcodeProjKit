import Foundation

public class PBXCopyFilesBuildPhase: PBXBuildPhase {
    public enum PBXKeys: PBXKey {
        case name
    }
    
#if LAZY
    public lazy var name: String? = self.string(PBXKeys.name)
#else
    public var name: String? {
        self.string(PBXKeys.name)
    }
#endif
    
    public override var comment: String? {
        self.name ?? "CopyFiles"
    }
}
