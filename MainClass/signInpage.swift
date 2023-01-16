//
//  signInpage.swift
//  DemoUITestsh
//
//  Created by  Pankhuri Gupta on 10/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//
/** This file is used to check the login page functionalities*/

import Foundation
import XCTest

protocol SignIn: Login, UserSignUp{
    
    func testSignIn()
}
  
extension SignIn {
    //This function is used to test the signIn functionality
    func testSignIn() {
        //This function is taking refernce from the protocol launchlogin file.
        testIntroductionPages()
        //This conditional if statement is used to check the Login button existence.
        if app.buttons["LOGIN"].exists {
        _ = app.buttons["LOGIN"].waitForExistence(timeout: 5)
        //This function is taking refernce from the signUp file which is used to enter in the textfield of email.
        inputMultipleName(identifier: "Email", text: "Pankhuri@gmail.com")
        //This function is taking refernce from the signUp file which is used to enter in the securetextfield of password.
        inputPassword(identifier: "Password", text: "Pankhuri@123")
        //This is used to check the login button is tappable.
        app.buttons["LOGIN"].tap()
        }
        
    }
    
    
}


