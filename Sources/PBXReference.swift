import Foundation

public class PBXReference: PBXContainerItem {
    public enum PBXKeys: PBXKey {
        case name,
             path,
             sourceTree
    }
    
#if LAZY
    public lazy var name: String? = self.string(PBXKeys.name)
    public lazy var path: String? = self.string(PBXKeys.path)
    public lazy var sourceTree: SourceTree? = SourceTree(sourceTreeString: self.string(PBXKeys.sourceTree) ?? "")
#else
    public var name: String? {
        self.string(PBXKeys.name)
    }
    
    public var path: String? {
        self.string(PBXKeys.path)
    }
    
    public var sourceTree: SourceTree? {
        SourceTree(sourceTreeString: self.string(PBXKeys.sourceTree) ?? "")
    }
#endif
    
    public override var comment: String? {
        self.name ?? self.path
    }
}
