//
//  signUpPage.swift
//  DemoUITestsh
//
//  Created by  Pankhuri Gupta on 10/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//
/** This file is used to  check the functionality of the new user registration button. */

import Foundation
import XCTest
import SwiftUI

protocol UserSignUp {

    func testNewUserRegistration()

    }

extension UserSignUp {
    //This function is used to check the textfields and buttons inside the new user regsitration option.
    func testNewUserRegistration() {
        //This is used to check the existance of the User New registration button while allowing it is wait on the page for 5 seconds.
        _ = app.buttons["Login"].waitForExistence(timeout: 5)
        //This assertion is used to check the "New User" button existance. If it returns true then it will pass to the next field othgerwise it will throw an error.
        XCTAssertTrue(app.buttons["New User? Create an account"].exists)
        //This is to check whether the New User? Create an account button is tappable.
        app.buttons["New User? Create an account"].tap()
        //This function calling is used to check the text fields of First Name inside New User?Crerate account button if it able to take  the response from the user.
        //This function is taking inherited from the below defined function
        input(identifier: "First Name", text: "Pankhuri")
        //This function calling is used to check the text fields of Last Name inside New User?Crerate account button if it able to take  the response from the user.
        //This function is taking inherited from the below defined function
        input(identifier: "Last Name", text: "Gupta")
        //This function calling is used to check the text fields of Email inside New User?Crerate account button if it able to take  the response from the user. Also, it throws an error if enters the invalid email address.
        //This function is taking inherited from the below defined function
        inputMultipleName(identifier: "Email", text: "Pankhuri@gmail.com")
        //This function calling is used to check the text fields of Contact No.
        //This function is taking inherited from the below defined function
        input(identifier: "Contact No", text: "1234567890")
        //This function calling is used to check the text fields of Date of Birth.
        //This function is taking inherited from the below defined function
        input(identifier: "Date of Birth", text: "12-12-2022")
        //This function calling is used to check the secure text fields of password.
        //This function is taking inherited from the below defined function
        inputPassword(identifier: "Password", text: "Pankhuri@123")
        //This function calling is used to check the secure text fields of Confirm Passwrd field.
        //This function is taking inherited from the below defined function.
        inputConfirmPassword(identifier: "Confirm Password", text: "Pankhuri@123")
        //This function calling is used to check the signup button is tappable.
        //This function is taking inherited from the below defined function.
        signUpButton(identifier: "SignUp")

    }
}

   //This function is created to declare the email text field with boudby value 0
   func input(identifier: String , text: String) {
        XCTAssertTrue(app.textFields[identifier].exists)
        app.textFields[identifier].tap()
        app.textFields.matching(identifier:identifier).element(boundBy: 0).typeText(text);
        }
    //This function is created to declare the email text field with boudby value 1.
    func inputMultipleName(identifier: String, text: String) {
        XCTAssertTrue(app.textFields[identifier].exists)
        app.textFields.matching(identifier:identifier).element(boundBy: 1).tap();
        app.textFields.matching(identifier:identifier).element(boundBy: 1).typeText(text);
    }
    //This function is created to declare the password text field with boudby value 1
    func inputPassword(identifier: String, text: String) {
        XCTAssertTrue(app.secureTextFields[identifier].exists)
        app.secureTextFields.matching(identifier: identifier).element(boundBy: 1).tap();
        app.secureTextFields.matching(identifier: identifier).element(boundBy: 1).typeText(text);
    }
    //This function is craeted to declare the email text field with boudby value 0, also for confirm p[aswrd text row.

    func inputConfirmPassword(identifier: String, text: String) {
        XCTAssertTrue(app.secureTextFields[identifier].exists)
        app.secureTextFields.matching(identifier: identifier).element(boundBy: 0).tap();
        app.secureTextFields.matching(identifier: identifier).element(boundBy: 0).typeText(text);
    }

    //This function is used to declare the signup button after entering all the fields.
    func signUpButton(identifier: String) {
        _ = app.buttons["SignUp"].waitForExistence(timeout: 5)
        XCTAssertTrue(app.buttons["SignUp"].exists)
        app.buttons["SignUp"].tap()
    }



