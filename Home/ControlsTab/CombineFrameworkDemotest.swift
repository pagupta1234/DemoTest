//
//  CombineFrameworkDemotest.swift
//  DemoUITestsh
//
//  Created by Pankhuri Gupta on 11/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//
//This file is used to test the Combine framework option functionality.
import Foundation
import XCTest

protocol Selectoption2: XCTestCase, Login, Home, OptionInControls, Tabbars, UserSignUp {

         
}

extension Selectoption2 {
   //This function is used to test the inside Combine framwork option functionality.
   func testFramework() {
    //Thjis function is used to test the control tabbar is tappable
    testControlTab()
    //This function is defined to check the Segment Control button is tappable element which is taking reference from the optionselection file.
    buttontapInSegment(identifier: "Combine Framework Demo")
    
    _ = app.staticTexts["Username"].waitForExistence(timeout: 5)
    //This function calling is used to check the text fields of Username inside New User?Crerate account button if it able to take  the response from
     //  the user.
    //This function is taking inherited from the signUp file
    input(identifier: "Username", text: "Pankhuri")
    //This function calling is used to check the text fields of Password inside New User?Crerate account button if it able to take  the response from the user.
    //This function is taking inherited from the below defined function
    inputConfirmPassword(identifier: "Password", text: "Pankhuri@123")
    //This function calling is used to check the text fields of Confirm Passwrd inside New User?Crerate account button if it able to take  the response from the user.
    //This function is taking inherited from the below defined function
    inputConfirmPassword(identifier: "Confirm Password", text: "Pankhuri@123")
    //This function calling is used to test the back button esixtence and back button is tapa
    testBackButton()

   }
}
