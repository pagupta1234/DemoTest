//
//  HomePage.swift
//  DemoUITestsh
//
//  Created by  Pankhuri Gupta on 11/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//
//This file is used to check the Home page fucntionalities.
import Foundation
import SwiftUI
import XCTest

    protocol Home: XCTestCase, Login {
    
    }

    extension Home {
        //This function is used to test the home page sections.
        func testHomePage() {
        //This function is used to check the color birds section existence.
        _ = app.buttons["Color Birds"].waitForExistence(timeout: 5)
        XCTAssertTrue(app.buttons["Color Birds"].exists)
        //This is used to check the matching color bird column. and then tap that particular button.
        app.buttons.matching(identifier: "Color Birds").element(boundBy: 0).tap();
            
        }
        //This function is used to test the back button functionalies.
        func testBackButton() {
        //This function is used to Back button existence
        _ = app.buttons["Back"].waitForExistence(timeout: 5)
            XCTAssertTrue(app.buttons["Back"].exists)
        //This is used to test the back button is tappable.
        app.buttons["Back"].tap()
        
    }
    }
        
      //  app.buttons.matching(identifier: "Back").element(boundBy: 1).tap();
      // app.buttons.matching(identifier: "Back").element(boundBy: 1).tap(
    
