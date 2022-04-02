//
//  TabBarViewController.swift
//  ContacntListOnUIKit
//
//  Created by Руслан Штыбаев on 02.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getPersons()
    
     // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let startedVC = viewController as? StartingViewController {
                startedVC.persons = persons
            } else if let moreVC = viewController as? InformationViewController {
                moreVC.persons = persons
            }
        }
    }

}
