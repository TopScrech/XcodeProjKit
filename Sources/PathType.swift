import Foundation

public enum PathType {
    case absolute(String),
         relativeTo(SourceTreeFolder, String)
}

extension PathType {
    public func url(with urlForSourceTreeFolder: (SourceTreeFolder) -> URL) -> URL {
        switch self {
        case let .absolute(absolutePath):
            return URL(fileURLWithPath: absolutePath).standardizedFileURL
            
        case let .relativeTo(sourceTreeFolder, relativePath):
            let sourceTreeURL = urlForSourceTreeFolder(sourceTreeFolder)
            
            return sourceTreeURL.appendingPathComponent(relativePath).standardizedFileURL
        }
    }
}
