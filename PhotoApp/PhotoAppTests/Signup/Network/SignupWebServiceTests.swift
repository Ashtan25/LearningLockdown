//
//  SignupWebServiceTests.swift
//  PhotoAppTests
//
//  Created by Ashish Singh on 26/05/20.
//  Copyright © 2020 Ashish Singh. All rights reserved.
//

import XCTest
@testable import PhotoApp

class SignupWebServiceTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSignupWebService_WhenGivenSuccessfullResponse_ReturnSuccess() {
        
        // Arrange
        let sut = SignupWebService(urlString: "http://appsdeveloperblog.com:8080/signup-mock-service/users")
        
        let signFormRequestModel = SignupFormRequestModel(firstName: "Ashish", lastName: "Singh", email: "test@test.com", password: "12345678")
        
        let expectation = self.expectation(description: "Signup Web Service Response Expectation")
        
        // Act
        sut.signup(withForm: signFormRequestModel) { (signupResponseModel, error) in
            
            
            // Assert
            //"{\"status\":\"ok\"}"
            XCTAssertEqual(signupResponseModel?.status, "ok")
            expectation.fulfill()
            
        }
        
        self.wait(for: [expectation], timeout: 5)
        
        
        
    }
    
}
