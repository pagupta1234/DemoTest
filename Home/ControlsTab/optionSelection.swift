//
//  optionSelection.swift
//  DemoUITestsh
//
//  Created by  Pankhuri Gupta on 11/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//
// This file is used check if the Control page functionality.
import Foundation
import XCTest

protocol OptionInControls: XCTestCase, Login, Home {

     
    
}

extension OptionInControls {
    //This function is used to test that all the three options are tappable or not.
    func test_select1() {
        //This function is defined to check the Segment Control button is tappable element which is taking reference from the optionselection file.
        buttontapInSegment(identifier: "Segment Control")
        //This function calling is used to check if the back button is working on the segemnt control section is tappable.
        testBackButton()
        //This function is defined to check the Combine Framework Demo button is tappable element which is taking reference from the optionselection file.
        buttontapInSegment(identifier: "Combine Framework Demo")
        //This function calling is used to check if the back button is working on the segemnt control section is tappable.
        testBackButton()
        //This function is defined to check the Picker button is tappable element which is taking reference from the optionselection file.
        buttontapInSegment(identifier: "Picker")
        testBackButton()

    }
     //this function is created to check the selected button existence and button is tappable.
    func buttontapInSegment(identifier: String) {
            XCTAssertTrue(app.buttons[identifier].exists)
            app.buttons[identifier].tap()

        }
        
    }
    
    
    
    
