//
//  PickerMenu.swift
//  DemoUITestsh
//
//  Created by Pankhuri Gupta on 11/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//
//This file is used to check the Picker menu functionality.
import Foundation
import XCTest

protocol ThirdOption: XCTestCase, Login, Home, OptionInControls, Tabbars, UserSignUp  {
    
    
}

extension ThirdOption{
    
   //This function is used to check the Strength menu inside the comnine Framework demo option menu.
    func testSelectNumberInPickerMenus() {
        //This function is used to select the Picker menu, takig refernce from optionincontrol file.
        buttontapInSegment(identifier: "Picker")
        //This function calling is used to check if the strength button is tappable.
        buttontapInSegment(identifier: "Strength")
        //This assertion is used to check the Ten option inside th strength option existence.
        XCTAssertTrue(app.tables.switches["Ten"].exists)
        //This is used to select ten option from the table menus.
        app.tables.switches["Ten"].tap()
      
}
    
    //This function is used to select the minimum date option functionalities.
    func testSelectminimumDate() {
        //This constant is declared the assign the table menu in minimum date selection row to select date.
        let selectdate = app.tables
        //This constant is declared to assign Date picker option in the minimum date.
        let minimumDate = selectdate.datePickers.containing(.other, identifier:"Date Picker").element(boundBy: 0)
        //This assertion is used to checck if the datepicker exists.
        XCTAssertTrue(app.tables.datePickers.containing(.other, identifier:"Date Picker").element(boundBy: 0).waitForExistence(timeout: 5), "Not Exists")
        //This is check if the datepicker is tappable.
        minimumDate.tap()
        //This assertion is used to the month menu existence from the date picker.
        XCTAssertTrue(app.buttons["Month"].waitForExistence(timeout: 5))
        //This is used to check if the month is selected by calling the function.
        monthSelect()
        //This is used to check if the year is selected by calling the function.
        yearDropDownSelectionSelection()
        //This is used to check if the month drop down is selected by calling the function.
        monthDropDwonSeletion()
        //This is check if the selected month, year and dropdowm menu is tappable.
        app.buttons.element(boundBy: 0).tap()
        //This is used to check if the month is selected by calling the function.
        monthSelect()
        //This assertion is used to check the seleted month , year from dropdown existence from the date picker.
       XCTAssertTrue(minimumDate.waitForExistence(timeout: 2), "Not found")
        //This is check if the datepicker is tappabl
        minimumDate.tap()
    }
    
    //This function is used to select the maximum date option functionalities.
    func testSelectMaximumDate(){
        //This constant is declared the assign the table menu in minimum date selection row to select date.
        let SelectDate = app.tables
        //This constant is declared to assign Date picker option in the maximum date.
        let maximumDate = SelectDate.datePickers.containing(.other, identifier:"Date Picker").element(boundBy: 1)
        //This assertion is used to checck if the datepicker exists.
        XCTAssertTrue(SelectDate.element.waitForExistence(timeout: 2), "Datepicker not found")
       //This is check if the datepicker is tappable.
        maximumDate.tap()
        //This is used to check if the month is selected by calling the function.
        monthSelect()
        //This is used to check if the year is selected by calling the function.
        yearDropDownSelectionSelection()
        //This is used to check if the month drop down is selected by calling the function.
        monthDropDwonSeletion()
        //This is check if the selected month, year and dropdowm menu is tappable.
        app.buttons.element(boundBy: 0).tap()
        //This is used to check if the month is selected by calling the function.
        monthSelect()
        //This assertion is used to check the seleted month , year from dropdown existence from the date picker.
        XCTAssertTrue(maximumDate.waitForExistence(timeout: 2), "Not found")
        //This is check if the datepicker is tappabl
        maximumDate.tap()
        
    }
    //This function is used to select the test date option functionalities.
    func testdateTestMenu(){
        //This constant is declared the assign the table menu in minimum date selection row to select date.
        let SelectDate = app.tables
        //This constant is declared to assign Date picker option in the maximum date.
        let testDate = SelectDate.datePickers.containing(.other, identifier:"Date Picker").element(boundBy: 2)
        //This is check if the datepicker is tappable.
        testDate.tap()
        //This is used to check if the month is selected by calling the function.
        monthSelect()
        //This is used to check if the year is selected by calling the function.
        yearDropDownSelectionSelection()
        //This is used to check if the month drop down is selected by calling the function.
        monthDropDwonSeletion()
        //This is check if the selected month, year and dropdowm menu is tappable.
        app.buttons.element(boundBy: 0).tap()
        //This is used to check if the month is selected by calling the function.
        monthSelect()
        //This assertion is used to check the seleted month , year from dropdown existence from the date picker.
        XCTAssertTrue(testDate.waitForExistence(timeout: 2), "Not found")
        //This is check if the datepicker is tappabl
        testDate.tap()
        //This function calling is used to test the back button esixtence and back button is tapa
        testBackButton()
    }
    
    //This function is craeted to chceck the month menu functionality from the datepicker.
    func monthSelect(){
         //This constant declaration is used to asign the Month button to a constant.
          let month = app.buttons["Month"]
          //This is used to check if the month button is tappable.
          month.tap()
  }

    //This function is craeted to chceck the year menu functionality from the datepicker.
     func yearDropDownSelectionSelection(){
        //This is used to check if the the year is selected from the drop down menu of the datepicker.
        app.pickerWheels.element(boundBy: 1).swipeDown(velocity: 50)
      }

    //This function is craeted to check the month drop downmenu functionality from the datepicker.
     func monthDropDwonSeletion(){
       //This is used to check if the the month is selected from the drop down menu of the datepicker.
       app.pickerWheels.element(boundBy: 0).swipeDown(velocity: 50)
     }

}

