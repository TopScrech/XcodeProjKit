import Foundation

public class PBXFileReference: PBXReference {
    public enum PBXKeys: PBXKey {
        case lastKnownFileType,
             explicitFileType
    }
    
#if LAZY
    public lazy var lastKnownFileType: String? = self.string(PBXKeys.lastKnownFileType)
    public lazy var explicitFileType: String? = self.string(PBXKeys.explicitFileType)
#else
    public var lastKnownFileType: String? {
        self.string(PBXKeys.lastKnownFileType)
    }
    
    public var explicitFileType: String? {
        self.string(PBXKeys.explicitFileType)
    }
#endif
    
    public func fullPath(_ project: XcodeProj) -> PathType? {
        project.objects.fullFilePaths[self.ref]
    }
}
