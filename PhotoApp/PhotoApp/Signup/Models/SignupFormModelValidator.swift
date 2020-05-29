//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by Ashish Singh on 20/05/20.
//  Copyright © 2020 Ashish Singh. All rights reserved.
//

import Foundation

class SignupFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        
        var returnValue = true
        
        if firstName.count < SignupConstants.firstNameMinLength || firstName.count > SignupConstants.firstNameMaxLength  {
            
            returnValue = false
        
        }
        
        return returnValue
        
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        
        var returnValue = true
        
        if lastName.count < SignupConstants.lastNameMinLength {
             returnValue = false
        }
        
        
        
        return returnValue
        
        
    }
    
}
