import Foundation

public class PBXReferenceProxy: PBXReference {
    public enum PBXKeys: PBXKey {
        case remoteRef
    }
    
#if LAZY
    public lazy var remoteRef: PBXContainerItemProxy? = self.object(PBXKeys.remoteRef)
#else
    public var remoteRef: PBXContainerItemProxy? {
        self.object(PBXKeys.remoteRef)
    }
#endif
    
}
