import Foundation

public class PBXBuildStyle: PBXProjectItem {
    public enum PBXKeys: PBXKey {
        case buildSettings
    }
    
#if LAZY
    public lazy var buildSettings: [String: Any]? = dictionary(PBXKeys.buildSettings)
#else
    public var buildSettings: [String: Any]? {
        get {
            dictionary(PBXKeys.buildSettings)
        }
        set {
            self.fields[PBXKeys.buildSettings.rawValue] = newValue
        }
    }
#endif
}
