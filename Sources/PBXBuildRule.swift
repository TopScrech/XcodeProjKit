import Foundation

public class PBXBuildRule: PBXProjectItem {
    public enum PBXKeys: PBXKey {
        case name,
             compilerSpec,
             dependencyFile,
             fileType,
             filePatterns,
             isEditable,
             runOncePerArchitecture,
             script
    }
    
#if LAZY
    public lazy var name: String = self.string(PBXKeys.name)
    public lazy var compilerSpec: String = self.string(PBXKeys.compilerSpec)
    public lazy var dependencyFile: String? = self.string(PBXKeys.dependencyFile)
    public lazy var fileType: String? = self.string(PBXKeys.fileType)
    public lazy var filePatterns: String? = self.string(PBXKeys.filePatterns)
    public lazy var isEditable = self.bool(PBXKeys.isEditable)
    public lazy var runOncePerArchitecture: String? = self.string(PBXKeys.runOncePerArchitecture)
    public lazy var script: String = self.string(PBXKeys.script)
#else
    public var name: String {
        self.string(PBXKeys.name)
    }
    
    public var compilerSpec: String {
        self.string(PBXKeys.compilerSpec)
    }
    
    public var dependencyFile: String? {
        self.string(PBXKeys.dependencyFile)
    }
    
    public var fileType: String? {
        self.string(PBXKeys.fileType)
    }
    
    public var filePatterns: String? {
        self.string(PBXKeys.filePatterns)
    }
    
    public var isEditable: Bool {
        self.bool(PBXKeys.isEditable)
    }
    
    public var runOncePerArchitecture: String? {
        self.string(PBXKeys.runOncePerArchitecture)
    }
    
    public var script: String {
        self.string(PBXKeys.script)
    }
#endif
    
    // var inputFiles: Array
    // var outputFiles: Array
    // var outputFilesCompilerFlag: Array
}
