//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Ashish Singh on 20/05/20.
//  Copyright © 2020 Ashish Singh. All rights reserved.
//

import XCTest
@testable import PhotoApp

class SignupFormModelValidatorTests: XCTestCase {
    
    var sut: SignupFormModelValidator!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    func testSignupFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        //Arrange
        
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Ashish")
        
        
        //Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE but retuned FALSE")
 
    }
    
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        
        //Arrange
        
        //Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "A")
        
        
        //Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a FIRST NAME that is shorter than \(SignupConstants.firstNameMaxLength) letters but it has returned TRUE")
        

    }
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvide_ShouldReturnFalse() {
        
        let isFirstNameValid = sut.isFirstNameValid(firstName: "ashishshshshshshshsgd")
    
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a FIRST NAME that is longer than \(SignupConstants.firstNameMaxLength) characters but it has returned TRUE")
        
        
    }
    
    func testSignupFormModelValidator_WhenValidLastNameProvided_ShouldReturnTrue() {
        
        let isLastNameValid = sut.isLastNameValid(lastName: "Singh")
        
        XCTAssertTrue(isLastNameValid, "Last Name throws invalid")
        
    }
    

}
