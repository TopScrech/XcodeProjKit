//
//  XcodeProjKitParseKoTests.swift
//  XcodeProjKitTests
//
//  Created by phimage on 30/07/2017.
//  Copyright © 2017 phimage (Eric Marchand). All rights reserved.
//

import XCTest
@testable import XcodeProjKit

class XcodeProjKitParseKoTests: XCTestCase {
    
    let bundle = Bundle(for: XcodeProjKitParseTests.self)
    
    func test001() {
        do {
            try testParse("ko/001")
        } catch {
            // ok
        }
    }
    
    func testmissingRoot() {
        do {
            try testParse("ko/missingRoot")
        } catch XcodeProjError.objectMissing(_, let isa) {
            // ok
            XCTAssertEqual(isa, Isa.project)
        } catch {
            XCTFail("Unexpected error \(error)")
        }
    }
    
    func testParse(_ resource: String, expected: Error? = nil) throws {
        if let url = url(forResource: resource, withExtension: XcodeProj.pbxprojFileExtension) {
            let _ = try XcodeProj(url: url)
            XCTFail("Must not be able to read")
        } else {
            XCTFail("Missing resource \(resource)")
        }
    }

}
