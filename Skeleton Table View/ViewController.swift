//
//  ViewController.swift
//  Skeleton Table View
//
//  Created by Timothy Sonner on 10/22/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Connect table view to view controller.
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Declare view controller as the delegate
        tableView.delegate = self
        // Declare view controller as the data source
        tableView.dataSource = self
    }
    
    // Provide conformance to ui table view delegate and ui table view data source.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    // Provide conformance to ui table view delegate and ui table view data source.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create instance of ui table view cell.
        let cell = UITableViewCell()
        // Create content object with a default configuration.
        var content = cell.defaultContentConfiguration()
        // Set text property of the content object.
        content.text = "text"
        content.secondaryText = "secondaryText"
        // Asign content configuration to the instance of ui table view cell.
        cell.contentConfiguration = content
        // Return the ui table view cell instance
        return cell
    }

}

