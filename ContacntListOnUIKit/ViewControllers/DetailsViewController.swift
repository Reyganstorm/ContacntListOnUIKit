//
//  DetailsViewController.swift
//  ContacntListOnUIKit
//
//  Created by Руслан Штыбаев on 02.04.2022.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var person: Person!
    
    @IBOutlet var imageView: UIImageView!

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var foodLabel: UILabel!
    @IBOutlet var characterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "sokka")
        
        nameLabel.text = person.name
        foodLabel.text = "want to buy \(person.food)"
        characterLabel.text = "behave in the store \(person.character)"

       
    }
}
