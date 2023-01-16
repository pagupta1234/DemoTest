//
//  logOut.swift
//  DemoUITestsh
//
//  Created by Pankhuri Gupta on 12/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//

//This file is used to check the logout button, after it got tapped which
//should throw an error.
import Foundation
import XCTest

protocol LogOut1: XCTestCase, Login, Tabbars{
    
}

extension LogOut1 {
    //This function is used to test the logout button functionality.
    func testLogOut() {
        //This file is used to test the Control tab which is taking refernece from the optionSelection file.
        testControlTab()
        //This is used to check the logout button existence.
        XCTAssertTrue(app.buttons["LOGOUT"].exists)
        _ = app.buttons["LOGOUT"].waitForExistence(timeout: 5)
        //This is used to check the logout buton is tappable.
        app.buttons["LOGOUT"].tap()
        //After tapping the logout button, if it goes to the login page, then the test cases is failed, because it should throw an error.
        _ = app.buttons["Login"].waitForExistence(timeout: 5)
        //This assertion is used to check the login button existance.
        XCTAssertTrue(app.buttons["Login"].exists)

   }
    
}

