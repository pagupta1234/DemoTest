//
//  signUpbutton.swift
//  DemoUITestsh
//
//  Created by  Pankhuri Gupta on 12/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//
/**This file is used to signUp page functionalities inside the combine framework section.**/
import Foundation
import XCTest

protocol Logout: XCTestCase, Login, Tabbars, OptionInControls, Selectoption2, Home {
    
}

extension Logout {
    //This function is used to test the sigup page existence and all the fields.
    func testSignUpButton() {
        //This is taking reference from the optionselection file.
        testControlTab()
        //This function is defined to check the tappable element which is taking reference from the optionselection file.
        buttontapInSegment(identifier: "Combine Framework Demo")
        //this is used to check the staticname username existence.
        _ = app.staticTexts["Username"].waitForExistence(timeout: 5)
        //This function calling is used to enter the textfield of username which is takling rfernce from the sigup page file.
        input(identifier: "Username", text: "Pankhuri")
        //This function calling is used to enter the textfield of Password which is takling rfernce from the sigup page file.
        inputConfirmPassword(identifier: "Password", text: "Pankhuri@123")
        //This function calling is used to enter the textfield of Confirm passwrd which is takling rfernce from the sigup page file.
        inputConfirmPassword(identifier: "Confirm Password", text: "Pankhuri@123")
        //This function is defined to check the tappable element which is taking reference from the optionselection file.
        buttontapInSegment(identifier: "Sign up")
        //this is used to check the staticname "Welcome! ..." page existence.
        _ = app.staticTexts["Welcome! Great to have you on board!"].waitForExistence(timeout: 5)
        //This is to verify if the back buton is availabe then the this testcase fails because the there should be only Weloome page after signinup in the app.
        _ = app.buttons["Back"].waitForExistence(timeout: 5)
        XCTAssertTrue(app.buttons["Back"].exists)
        //This is used to check the back button is tappable.
        app.buttons["Back"].tap()// if not exists, then fail else pass
    }
    
     //This function is created to test the signUp button functionality.
    func testSignUpButton(identifier: String) {
        _ = app.buttons["Sign up"].waitForExistence(timeout: 5)
        XCTAssertTrue(app.buttons["Sign up"].exists)
        app.buttons["Sign up"].tap()
    }
}


