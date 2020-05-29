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

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupWebService_WhenGivenSuccessfullResponse_ReturnSuccess() {
        
        //Arrange
        let sut = SignupWebService()
        
        let signFormRequestModel = SignupFormRequestModel(firstName: "Ashish", lastName: "Singh", email: "test@test.com", password: "12345678")
        
        sut.signup(withForm: signFormRequestModel) { (signFormResponseModel, error) in 
            
        }
        
        
        
    }

}
