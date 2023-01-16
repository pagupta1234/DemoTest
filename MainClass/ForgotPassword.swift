//
//  ForgotPassword.swift
//  DemoUITestsh
//
//  Created by  Pankhuri Gupta on 11/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//


/** This file is used to check the forgot password button and then check the submit buton after entering the valid email id in it*/
import Foundation
import XCTest
import SwiftUI

protocol ForgotPassword: Login, UserSignUp {

    
    }

extension ForgotPassword {
   //This function is used to test the forgot password functionality.
    func testpasswrd() {
        //This button has been used to  test the forgot password button is tappable
        _ = app.buttons["Forgot Passowrd?"].waitForExistence(timeout: 5)
        //this assertion is used to check if the Forgot passwrod button existence.
        XCTAssertTrue(app.buttons["Forgot Passowrd?"].exists)
        //this is to check if the forgot password button is tappable.
        app.buttons["Forgot Passowrd?"].tap()
        //This line is used to check enter the email address by calling the function name. This function reference is from UsersignUp
        inputMultipleName(identifier: "Email", text: "Pankhuri@gmail.com")
        //to check the submit button exists and then tap the submit button.
        _ = app.buttons["SUBMIT"].waitForExistence(timeout: 5)
        //This assertion is used to check the submit button existence.
        XCTAssertTrue(app.buttons["SUBMIT"].exists)
    }
}
    
