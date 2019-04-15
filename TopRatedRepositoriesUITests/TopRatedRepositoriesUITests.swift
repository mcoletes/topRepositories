//
//  TopRatedRepositoriesUITests.swift
//  TopRatedRepositoriesUITests
//
//  Created by Mauro Sasso Coletes on 11/04/19.
//  Copyright © 2019 MSC. All rights reserved.
//

import XCTest

class TopRatedRepositoriesUITests: XCTestCase {

    override func setUp() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        snapshot("0Launch")
    }

}
