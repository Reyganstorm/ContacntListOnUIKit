//
//  TabBarViewController.swift
//  ContacntListOnUIKit
//
//  Created by Руслан Штыбаев on 02.04.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
  //  let people = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }

    private func setupViewControllers() {
        let people = Person.getPersons()
        let startedVC = viewControllers?.first as! StartingViewController
        let infoVC = viewControllers?.last as! InformationViewController
        
        infoVC.persons = people
        startedVC.persons = people
    }

   /*
     // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarViewController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let infoVC = viewController as? InformationViewController {
                infoVC.persons = people
            } else if let startedVC = viewController as? StartingViewController {
                startedVC.persons = people
            }
        }
    }
*/
}

