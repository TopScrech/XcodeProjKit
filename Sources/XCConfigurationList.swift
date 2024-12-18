import Foundation

public class XCConfigurationList: PBXProjectItem {
#if LAZY
    public lazy var buildConfigurations: [XCBuildConfiguration] = self.objects("buildConfigurations")
#else
    public var buildConfigurations: [XCBuildConfiguration] {
        self.objects("buildConfigurations")
    }
#endif
}

public protocol PBXBuildConfigurationListable {
    var buildConfigurationList: XCConfigurationList? {
        get
    }
}
