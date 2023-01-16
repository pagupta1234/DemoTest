//
//  login.swift
//  DemoUITestsh
//
//  Created by Pankhuri Gupta on 12/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//

/** This file is used to check the valid email id password and with invalid email , password and check the login functionatlity is work properly after not entering any email , password*/

import Foundation
import XCTest

protocol TestTestcases: XCTestCase, Login, UserSignUp {
    
}

extension TestTestcases {
    //This function is used to validate the valid email id and password.
    func testValidLoginPassword() {
        //This conditional if statement is used to check login button existance.
        if app.buttons["LOGIN"].exists {
        _ = app.buttons["LOGIN"].waitForExistence(timeout: 5)
            //This function is taking refrence from the signUp file which is called to enter in the textfield of email id
            input(identifier: "Email", text: "Pasbda@gmail.com")
            //This function is taking refrence from the signUp file which is called to enter in the textfield of password.
            inputConfirmPassword(identifier: "Password", text: "Pankhuri@123")
            //This is to tap the login button.
            app.buttons["LOGIN"].tap()
           //This is used to check Home button existance.
            _ = app.buttons["Home"].waitForExistence(timeout: 5)
          //  XCTAssertTrue(app.buttons["Home"].exists) // this is  a positive test case
    }
    }
       //This function is used to validate the password textfield.
        func testInvalidPassword() {
                //This conditional if statement is used to check login button existance.
                if app.buttons["LOGIN"].exists {
                _ = app.buttons["LOGIN"].waitForExistence(timeout: 5)
                //This function is taking refrence from the signUp file which is called to enter in the textfield of email id
                input(identifier: "Email", text: "Pasbda@gmail.com")
                //This function is taking refrence from the signUp file which is called to enter in the textfield of password.
                inputConfirmPassword(identifier: "Password", text: "Pan")
                //This is to tap the login button.
                app.buttons["LOGIN"].tap()
                // XCTAssertTrue(app.buttons["Home"].exists) // if it goes to the home page then test cases pass whichis not true, which satisfies the negative test case.
                //This is to test the Ok button existence after entering invalid passwrd format.
                XCTAssertTrue(app.buttons["OK"].exists)
                //This is used to tap the ok button to tap.
                app.buttons["OK"].tap()
                }
            }
        //This function is used to validate the password textfield.
        func testBlankLoginPassword() {
            //This function is taking refrence from the signUp file which is called to enter in the textfield of email id
            input(identifier: "Email", text: "Pasbda@gmail.com")
            //This function is taking refrence from the signUp file which is called to enter in the textfield of password.
            inputConfirmPassword(identifier: "Password", text: "")
            //This is to tap the login button.
            app.buttons["LOGIN"].tap()
            //This is to test the Home button existence after entering invalid passwrd format and then tapthe login button
            XCTAssertTrue(app.buttons["Home"].exists)
            // if it goes to the home page then test cases pass which is not true, which satisfies the negative test case
            //if is fails , then it has a prompt, "Passwrod cant be empty"
            XCTAssertTrue(app.buttons["OK"].exists)
            //This is to test the Ok button existence after entering invalid passwrd format whn it prompts the blank passwrd error.
            app.buttons["OK"].tap()
        }
            
/** this function checks the email text is working fine or not after entering the valid email id and valid password  if it not works as intended then it should propmpt a page and then click on the OK button **/
    
       func testValidLoginEmail() {

          if app.buttons["LOGIN"].exists {
          _ = app.buttons["LOGIN"].waitForExistence(timeout: 5)
          input(identifier: "Email", text: "Pankhuri@gmail.com")
          inputConfirmPassword(identifier: "Password", text: "Pankhuri@123")
          app.buttons["LOGIN"].tap()
          XCTAssertTrue(app.buttons["Home"].exists) // THEN IT SHOULD COME TO THE PASSWROD FEILD
         //XCTAssertTrue(app.buttons["OK"].exists)
         //app.buttons["OK"].tap()
           
    }
    }
       /** This function checks the email text is working fine or not after entering the invalid email id and a valild password if it not works as intended then it should propmpt a page and then click on the OK button **/
       func testInvalidLoginEmail() {
        
        input(identifier: "Email", text: "Pankhuri")
        inputConfirmPassword(identifier: "Password", text: "Pankhuri@123")
            app.buttons["LOGIN"].tap()
        _ = app.buttons["Home"].waitForExistence(timeout: 5)
        XCTAssertTrue(app.buttons["Home"].exists)
        _ = app.buttons["Email is not valid"].waitForExistence(timeout: 5)
        
       XCTAssertTrue(app.buttons["OK"].exists)
        app.buttons["OK"].tap()
                }
    /** This function checks the email text is working fine or not after not entering any email id and a valid password and if it not works as intended then it should propmpt a page and then click on the OK button **/
    func testEmptyLoginEmail() {
        input(identifier: "Email", text: " ")
        inputConfirmPassword(identifier: "Password", text: "Pankhuri@123")
        app.buttons["LOGIN"].tap()
        XCTAssertTrue(app.buttons["Home"].exists)
        _ = app.buttons["Email can't be blank."].waitForExistence(timeout: 5)
       XCTAssertTrue(app.buttons["OK"].exists)
       app.buttons["OK"].tap()
        
//        }
        }
//
        
}
