import Foundation

public class PBXShellScriptBuildPhase: PBXBuildPhase {
    public enum PBXKeys: PBXKey {
        case name,
             shellScript,
             inputPaths,
             outputPaths
    }
    
#if LAZY
    public lazy var name: String? = self.string(PBXKeys.name)
    public lazy var shellScript: String? = self.string(PBXKeys.shellScript)
    public lazy var inputPaths: [String] = self.strings(PBXKeys.inputPaths)
    public lazy var outputPaths: [String] = self.strings(PBXKeys.outputPaths)
#else
    public var name: String? {
        self.string(PBXKeys.name)
    }
    
    public var shellScript: String? {
        self.string(PBXKeys.shellScript)
    }
    
    public var inputPaths: [String] {
        self.strings(PBXKeys.inputPaths)
    }
    
    public var outputPaths: [String] {
        self.strings(PBXKeys.outputPaths)
    }
#endif
    
    public override var comment: String? {
        self.name ?? "ShellScript"
    }
}
