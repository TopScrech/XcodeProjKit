//
//  PBXTarget.swift
//  XcodeProjKit
//
//  Created by phimage on 30/07/2017.
//  Copyright © 2017 phimage (Eric Marchand). All rights reserved.
//

import Foundation

public /* abstract */ class PBXTarget: PBXProjectItem, PBXBuildConfigurationListable {

    #if LAZY
    public lazy var name: String = self.string("name")
    public lazy var productName: String? = self.string("productName")
    public lazy var buildPhases: [PBXBuildPhase] = self.objects("buildPhases")
    public lazy var buildConfigurationList: XCConfigurationList? = self.object("buildConfigurationList")
    public lazy var dependencies: [PBXTargetDependency] = self.objects("dependencies")
    #else
    public var name: String { self.string("name") }
    public var productName: String? { self.string("productName") }
    public var buildPhases: [PBXBuildPhase] { self.objects("buildPhases") }
    public var buildConfigurationList: XCConfigurationList? { self.object("buildConfigurationList") }
    public var dependencies: [PBXTargetDependency] { self.objects("dependencies") }
    #endif

    public override var comment: String? {
        return self.name
    }

}
