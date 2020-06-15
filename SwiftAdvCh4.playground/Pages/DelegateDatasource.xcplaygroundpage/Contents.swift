//: [Previous](@previous)

import Foundation

protocol PassDataDelegate {
    func passData(data: String)
}


class FirstVC {
    var delegate: PassDataDelegate?
}

class SecondVC: PassDataDelegate {
    func passData(data: String) {
        print("The CEO has asked me for \(data)")
    }
    
    
}

let firstVC = FirstVC()
let secondVC = SecondVC()
firstVC.delegate = secondVC

firstVC.delegate?.passData(data: "nothing")


import UIKit

class AshViewController: UIViewController, UITableViewDelegate {
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}

//Data Source

protocol PassDataSource {
    func passData(data: String) -> String
}

class NewFirstVC {
    var dataSource: PassDataSource?
}

class NewSecondVC: PassDataSource {
    func passData(data: String) -> String {
        print("The CEO has Provided \(data)")
        return "I am too tired to do the rest..."
    }

}

let newFirstVc = NewFirstVC()
let newSecondVC = NewSecondVC()

newFirstVc.dataSource = newSecondVC

let messageFromSecretary = newFirstVc.dataSource?.passData(data: "Too much work")
print(messageFromSecretary!)



// Real Life example

class AccountVC: UIViewController, UITableViewDataSource {
    
    let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 200
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell(style: .default, reuseIdentifier: "cell")
    }
    
    
}




























//: [Next](@next)

