//
//  TabBarViewController.swift
//  ContacntListOnUIKit
//
//  Created by Руслан Штыбаев on 02.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let people = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    
     // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarViewController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let startedVC = viewController as? InformationViewController {
                startedVC.persons = people
            } else if let navigationVC = viewController as? UINavigationController {
                let moreVC = navigationVC.topViewController as! StartingViewController
                moreVC.persons = people
            }
        }
    }

}
