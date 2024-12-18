import Foundation

public /* abstract */ class PBXBuildPhase: PBXProjectItem {
    public enum PBXKeys: PBXKey {
        case files
    }
    
#if LAZY
    public lazy var files = self.objects(PBXKeys.files)
#else
    public var files: [PBXBuildFile] {
        self.objects(PBXKeys.files)
    }
#endif
}
