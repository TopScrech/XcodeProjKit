import Foundation

extension URL {
    var isDirectoryURL: Bool {
        var isDirectory: ObjCBool = false
        
        return FileManager.default.fileExists(atPath: self.path, isDirectory: &isDirectory)
        && isDirectory.boolValue
    }
}
