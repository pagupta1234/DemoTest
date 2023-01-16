//
//  segmentControl.swift
//  DemoUITestsh
//
//  Created by  Pankhuri Gupta on 11/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//
//This file is used to check  the SEgemnt control button functionalities
import Foundation
import XCTest

protocol Selectoption1: XCTestCase, Login, Home, OptionInControls, Tabbars{

  
    
}

extension Selectoption1 {
   //this function is used to test the segment control tab.
   func testSegment() {
       //This file is called to test the Control tab is tappable.
       testControlTab()
       //This function is defined to check the Segment Control button is tappable element which is taking reference from the optionselection file.
       buttontapInSegment(identifier: "Segment Control")
       //This function is defined to check the "Two" button option is tappable element which is taking reference from the optionselection file.
       buttontap(identifier: "Two")
       //This function is defined to check the "Three" button option is tappable element which is taking reference from the optionselection file.
       buttontap(identifier: "Three")
       //This function is defined to check the "Sparrow" button option is tappable element which is taking reference from the optionselection file.
       buttontap(identifier: "Sparrow")
       //This function is defined to check the "Duck" button option is tappable element which is taking reference from the optionselection file.
       buttontap(identifier: "Duck")
       //This function is defined to check the "Crows" button option is tappable element which is taking reference from the optionselection file.
       buttontap(identifier: "Crows")
       //This function is defined to check the "Pigeons" button option is tappable element which is taking reference from the optionselection file.
       buttontap(identifier: "Pigeons")
       //This function is defined to check the "Dove" button option is tappable element which is taking reference from the optionselection file.
       buttontap(identifier: "Dove")
       //This function calling is used to check if the back button is working on the segemnt control section is tappable.
       testBackButton()
   }
    //This function is created to test if the buttons are tappable andf existence.
    func buttontap(identifier: String) {
            XCTAssertTrue(app.buttons[identifier].exists)
            app.buttons[identifier].tap()
    }
}
