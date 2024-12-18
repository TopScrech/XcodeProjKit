import Foundation

extension Sequence {
    func of<T>(type: T.Type) -> [T] {
        self.compactMap {
            $0 as? T
        }
    }
    
    func grouped<Key>(by keySelector: (Iterator.Element) -> Key) -> [Key: [Iterator.Element]] {
        var groupedBy: [Key: [Iterator.Element]] = [:]
        
        for element in self {
            let key = keySelector(element)
            var array = groupedBy.removeValue(forKey: key) ?? []
            array.append(element)
            groupedBy[key] = array
        }
        
        return groupedBy
    }
    
    func sorted<U: Comparable>(by keySelector: (Iterator.Element) -> U) -> [Iterator.Element] {
        self.sorted {
            keySelector($0) < keySelector($1)
        }
    }
}
