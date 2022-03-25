//
//  ContactDetalViewController.swift
//  PersonsList
//
//  Created by Виталий Бобрик on 25.03.22.
//

import UIKit

class ContactDetalViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.title
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
