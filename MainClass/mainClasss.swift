//
//  mainClasss.swift
//  DemoUITestsh
//
//  Created by  Pankhuri Gupta on 10/01/23.
//  Copyright © 2023 mac-00018. All rights reserved.
//

import Foundation
import XCTest


/**This class is used to call all the functions defined in  the files.**/

/// ajskdhashf
/// sdjfhjksdfh
class MainClasss: XCTestCase, Login, UserSignUp, SignIn, ForgotPassword, Home, Tabbars, OptionInControls, Selectoption1, Selectoption2, ThirdOption, TestTestcases, LogOut1, Logout{
    
    
    func testSignInn() {
        testIntroductionPages()
        testLogin()
        testLogOut()
        testSignUpButton()
        testHomePage()
        testBackButton()
        testHomeTab()
        testControlTab()
        test_select1()
        testSegment()
        testFramework()
        testSelectNumberInPickerMenus()
        testSelectminimumDate()
        testSelectMaximumDate()
        testdateTestMenu()
       testValidLoginPassword()
       testInvalidLoginEmail()
       testBlankLoginPassword()
     
    }
    
    
        

    }
    
    

