//
//  InfoPersonViewController.swift
//  PesonList
//
//  Created by Виталий Бобрик on 22.03.22.
//

import UIKit

class InfoPersonViewController: UITableViewController {

    var persons: [Person] = []

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].title
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let list = tableView.dequeueReusableCell(withIdentifier: "listTitleInfo", for: indexPath)
     
        let person = persons[indexPath.section]
        var content = list.defaultContentConfiguration()
        
        switch indexPath.row{
        case 0:
            content.text = person.phone
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        list.contentConfiguration = content
        
        return list
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
