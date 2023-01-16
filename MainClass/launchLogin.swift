//
//  launchLogin.swift
//  DemoUITestsh
//
//  Created by Pankhuri Gupta on 10/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//
/**this file is created to test the application launching, also tests the login functionality if it works properly or not and it proceeds with the introduction pages **/
import Foundation

import XCTest
//This is used to assign the XCUIApplication() to the app variable.
 var app = XCUIApplication()

 protocol Login: XCTestCase {
       
}
    
 extension Login {
   //This function is used to test the Introduction page functionalities.
   func testIntroductionPages() {
      //This is used to assign the XCUIApplication() to the app variable.
      app = XCUIApplication()
       //this is used to launch the application
      app.launch()
      //This if condition is used to check the First text inside the first pageof introdution page after launching the application.
      if app.staticTexts["First"].exists {
      //this is used to assign the right button to the variable ab.
      let ab = app.buttons["Right"]
    //This assertion is check yhe right button existence as it is assigned to variable named ab.
      XCTAssertTrue(ab.exists, "Right button not found");
      //This is check if the right buttonis tappable.
      ab.tap()
      //This is used to check the Second text existence.
      app.staticTexts["Second"].waitForExistence(timeout: 10)
     //This is check if the right buttonis tappable.
      app.buttons["Right"].tap()
      //This is used to assign the Right button to a new constant c.
      let c = app.buttons["Right"]
     // this is used for the waiting time on a third page.
      _ = c.waitForExistence(timeout: 5)
            //This if conditional statement is used to check the Third text existence.
            if app.staticTexts["Third"].exists {
                //This is used to cehck the Right button existence.
                XCTAssertTrue(c.exists)
                //This is used to check if the Right button is tappable.
                c.tap()
            }
      }

        }
    
      //this function is used to check the login page functionalities.
       func testLogin() {
          //This if conditional statemnet is used to check the login button existence.
          if app.buttons["LOGIN"].exists {
          _ = app.buttons["LOGIN"].waitForExistence(timeout: 5)
          //this assertion is used to check the Email textfield existence.
          XCTAssertTrue(app.textFields["Email"].exists)
          //This is used to move teh cursor on the email textfield.
          app.textFields["Email"].tap()
          //This is enter the texts in the email textfield.
          app.textFields.matching(identifier: "Email").element(boundBy: 0).typeText("pankhuri123@gmail.com")
          //this is check if the password textfield is tappable.
          app.secureTextFields["Password"].tap()
          //this assertion is used to check the passwrod textfield existence.
          XCTAssertTrue(app.secureTextFields["Password"].exists)
          //This is enter the texts in the Password textfield.
          app.secureTextFields.matching(identifier: "Password").element(boundBy: 0).typeText("Pankhuri@123")
          
          _ = app.buttons["LOGIN"].waitForExistence(timeout: 5)
         //this is to chekif the login button is tappable.
         app.buttons["LOGIN"].tap()
         }
         
       }
    }

