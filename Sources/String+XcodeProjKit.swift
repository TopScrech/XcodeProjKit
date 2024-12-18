import Foundation

// swiftlint:disable:next force_try
let nonescapeRegex = try! NSRegularExpression(pattern: "^[a-z0-9_\\$\\.\\/]+$", options: .caseInsensitive)

let specialRegexes: [(String, NSRegularExpression)] = ["\\\\", "\\\"", "\\n", "\\r", "\\t"].compactMap { string in
    if let regular = try? NSRegularExpression(pattern: string, options: []) {
        (string, regular)
    } else {
        nil
    }
}

extension String {
    
    var valueString: String {
        var str = self
        
        for (replacement, regex) in specialRegexes {
            let range = NSRange(location: 0, length: str.utf16.count)
            let template = NSRegularExpression.escapedTemplate(for: replacement)
            str = regex.stringByReplacingMatches(in: str, options: [], range: range, withTemplate: template)
        }
        
        let range = NSRange(location: 0, length: str.utf16.count)
        
        if nonescapeRegex.firstMatch(in: str, options: [], range: range) != nil {
            return str
        }
        
        return "\"\(str)\""
    }
}
