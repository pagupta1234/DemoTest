//
//  tabBarsSelection.swift
//  DemoUITestsh
//
//  Created by Pankhuri Gupta on 11/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//
// This file is used check if the Tabbars(Home, Control) are tappable.

import Foundation
import XCTest

   protocol Tabbars: XCTestCase, Login{

     
   }

   extension Tabbars {
         //This function is used to test the Home tabbar button.
         func testHomeTab() {
             //this function is used to test the Home button existence
             _ =  app.buttons["HOME"].waitForExistence(timeout: 5)
             XCTAssertTrue(app.buttons["HOME"].exists)
             //This is used to test the matching home button  is tappable.
             app.buttons.matching(identifier:"HOME").element(boundBy: 1).tap()
        
    }
       //This function is used to test the Control tabbar button.
        func testControlTab() {
            //this function is used to test the Control button existence
            _ =  app.buttons["CONTROLS"].waitForExistence(timeout: 5)
             XCTAssertTrue(app.buttons["CONTROLS"].exists)
            //This is used to test the matching Control button  is tappable.
             app.buttons["CONTROLS"].tap()

        }

}
