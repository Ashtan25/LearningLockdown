//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Person {
    var name: String { get set }
    
    func performActivity()
}

extension Person {
    func performActivity() {
        // Implementation
    }
}


protocol Tenant: Person {
//    var unitType: UnitType { get set }
    
    func payRent()
}

protocol InactiveTenant: Person {
    func requestDepositReturn()
}

protocol Manager: Person {
    var rentalPercentDiscount: Double { get set }
    func performInspection()
}

enum UnitType {
    case A(withGarage: Bool)
    case B(withGarage: Bool)
    
    var rentFee: Double {
        switch self {
        case .A(let withGarage):
            if withGarage {
                return 1200.0 + 200.0
            }
            return 1200.0
            
        case .B(let withGarage):
            if withGarage {
                return 1300.0 + 200.0
            }
            return 1300.0
        }
    }
}

struct Occupant: Tenant {
    var name: String
    var unitType: UnitType
    
    func payRent() {
        print("Occupant monthly rent is \(unitType.rentFee)")
    }
    
    func performActivity() {
        
    }
}

struct FormerTenant: Person, InactiveTenant {
    var name: String
    
    func requestDepositReturn() {
        print("Deposit return requested by: \(name)")
    }
}

struct OnsiteManager: Tenant, Manager {
    var name: String
    var rentalPercentDiscount: Double = 10.0
    
    init(name: String, rentalPercentDiscount: Double? = nil) {
        self.name = name
        
        if let rentalDiscount = rentalPercentDiscount {
            self.rentalPercentDiscount = rentalDiscount
        }
    }
    
    func payRent() {
        print("Manager pay special rent")
    }
    
    func performInspection() {
        // Implementation
    }
}

class RentalProperty {
    var tenant: Tenant?
    var unitType: UnitType
    
    init(tenant: Tenant? = nil, unitType: UnitType) {
        self.tenant = tenant
        self.unitType = unitType
    }
    
    func monthlyRent() -> Double {
        guard let tenant = self.tenant else { return 0.00 }
        
        if tenant is OnsiteManager {
            return self.specialRent(for: tenant as! Tenant & Manager)
        }
        else {
            return unitType.rentFee
        }
    }
    
    private func specialRent(for tenant: Tenant & Manager) -> Double {
        return unitType.rentFee * (100 - tenant.rentalPercentDiscount) / 100
    }
    
    func detailInfo() -> String {
        guard let tenant = self.tenant else { return "Property is currently vacant" }
        
        return "Name: \(tenant.name) | unitType: \(unitType) | rental fee: \(monthlyRent())"
    }
}



let occupant1 = Occupant(name: "Kellie" , unitType: .A(withGarage: true))
occupant1.payRent()

let occupant2 = Occupant(name: "Mark", unitType: .B(withGarage: false))
occupant2.payRent()

let pastTenant = FormerTenant(name: "Joe")
pastTenant.requestDepositReturn()


let onsiteManager = OnsiteManager(name: "Bob")
let rental1 = RentalProperty(tenant: onsiteManager, unitType: .B(withGarage: true))
print(rental1.detailInfo())

let rental2 = RentalProperty(tenant: occupant1, unitType: .A(withGarage: true))
print(rental2.detailInfo())

let rental3 = RentalProperty(unitType: .A(withGarage: false))
print(rental3.monthlyRent())
print(rental3.detailInfo())















