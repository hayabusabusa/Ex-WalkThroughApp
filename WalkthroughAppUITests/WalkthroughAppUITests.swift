//
//  WalkthroughAppUITests.swift
//  WalkthroughAppUITests
//
//  Created by Yamada Shunya on 2019/06/04.
//  Copyright © 2019 Yamada Shunya. All rights reserved.
//

import XCTest

class WalkthroughAppUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        let app = XCUIApplication()
        
        // TEST: SecondViewController に正しく遷移するかどうか
        XCTContext.runActivity(named: "次へ ボタンをtap、SecondViewController に遷移するかを確認") { _ in
            let firstNextButton = app.buttons["nextButton"]
            firstNextButton.tap()
            
            // Navigation Bar のタイトルで調べる or その画面固有の部品の存在で調べる
            XCTAssert(app.navigationBars["Second"].exists)
            XCTAssert(app.staticTexts["secondLabel"].exists)
        }
        
        // TEST: FirstViewController に戻ることができるか
        
        XCTContext.runActivity(named: "戻るボタンをtap、FirstViewController に戻るかを確認", block: { _ in
            let secondBackButton = app.buttons["backButton"]
            secondBackButton.tap()
            
            XCTAssert(app.navigationBars["First"].exists)
            XCTAssert(app.staticTexts["firstLabel"].exists)
        })
        
        // TEST: ThirdViewController に遷移できるか
        
        XCTContext.runActivity(named: "次へボタンを2画面分tap、ThirdViewController まで遷移できるかを確認", block: { _ in
            let firstNextButton = app.buttons["nextButton"]
            firstNextButton.tap()
            
            let secondNextButton = app.buttons["nextButton"]
            secondNextButton.tap()
            
            XCTAssert(app.navigationBars["Third"].exists)
            XCTAssert(app.staticTexts["thirdLabel"].exists)
        })
    }

}
