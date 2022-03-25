//
//  PersonListViewController.swift
//  PesonList
//
//  Created by Виталий Бобрик on 22.03.22.
//

import UIKit

class PersonListViewController: UITableViewController {

    var persons: [Person] = []
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let listTitle = tableView.dequeueReusableCell(withIdentifier: "listTitle", for: indexPath)
        var content = listTitle.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.title
        listTitle.contentConfiguration = content
        
        return listTitle
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let contactDetalVC = segue.destination as? ContactDetalViewController else {return}
            contactDetalVC.person = persons[indexPath.row]
        }
    }
    

}
