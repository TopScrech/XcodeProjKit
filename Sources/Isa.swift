import Foundation

public enum Isa: String, CaseIterable, CustomStringConvertible {
    case project = "PBXProject",
         containerItemProxy = "PBXContainerItemProxy",
         buildFile = "PBXBuildFile",
         buildStyle = "PBXBuildStyle",
         buildRule = "PBXBuildRule",
         aggregateTarget = "PBXAggregateTarget",
         nativeTarget = "PBXNativeTarget",
         targetDependency = "PBXTargetDependency",
         legacybTarget = "PBXLegacyTarget",
         reference = "PBXReference",
         referenceProxy = "PBXReferenceProxy",
         fileReference = "PBXFileReference",
         group = "PBXGroup",
         variantGroup = "PBXVariantGroup",
         copyFilesBuildPhase = "PBXCopyFilesBuildPhase",
         frameworksBuildPhase = "PBXFrameworksBuildPhase",
         headersBuildPhase = "PBXHeadersBuildPhase",
         resourcesBuildPhase = "PBXResourcesBuildPhase",
         shellScriptBuildPhase = "PBXShellScriptBuildPhase",
         sourcesBuildPhase = "PBXSourcesBuildPhase",
         versionGroup = "XCVersionGroup",
         configurationList = "XCConfigurationList",
         buildConfiguration = "XCBuildConfiguration",
         remoteSwiftPackageReference = "XCRemoteSwiftPackageReference",
         swiftPackageProductDependency = "XCSwiftPackageProductDependency"
    
    public var description: String {
        rawValue
    }
    
    static func from(className: String) -> Isa? {
        for isa in Isa.allCases {
            if className.contains(isa.rawValue) {
                return isa
            }
        }
        
        return nil
    }
}

extension Isa: Comparable {
    public static func < (lhs: Isa, rhs: Isa) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
}

extension Isa {
    public var type: PBXObject.Type {
        switch self {
        case .project: PBXProject.self
        case .containerItemProxy: PBXContainerItemProxy.self
        case .buildFile: PBXBuildFile.self
        case .copyFilesBuildPhase: PBXCopyFilesBuildPhase.self
        case .frameworksBuildPhase: PBXFrameworksBuildPhase.self
        case .headersBuildPhase: PBXHeadersBuildPhase.self
        case .resourcesBuildPhase: PBXResourcesBuildPhase.self
        case .shellScriptBuildPhase: PBXShellScriptBuildPhase.self
        case .sourcesBuildPhase: PBXSourcesBuildPhase.self
        case .buildStyle: PBXBuildStyle.self
        case .aggregateTarget: PBXAggregateTarget.self
        case .nativeTarget: PBXNativeTarget.self
        case .legacybTarget: PBXLegacyTarget.self
        case .targetDependency: PBXTargetDependency.self
        case .reference: PBXReference.self
        case .referenceProxy: PBXReferenceProxy.self
        case .fileReference: PBXFileReference.self
        case .group: PBXGroup.self
        case .variantGroup: PBXVariantGroup.self
        case .versionGroup: XCVersionGroup.self
        case .configurationList: XCConfigurationList.self
        case .buildConfiguration: XCBuildConfiguration.self
        case .remoteSwiftPackageReference: XCRemoteSwiftPackageReference.self
        case .swiftPackageProductDependency: XCSwiftPackageProductDependency.self
        case .buildRule: PBXBuildRule.self
        }
    }
}
