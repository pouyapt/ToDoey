//
//  ViewController.swift
//  ToDoey
//
//  Created by Pouya on 7/12/19.
//  Copyright © 2019 PouyApps. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController
{

    let itemArray = ["Milk", "Eggs","Apples"]
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //MARK: Tableview Datasource Methods:

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
            cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    // MARK: TableView delegate method

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (tableView.cellForRow(at: indexPath)?.accessoryType != .checkmark)
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        else
        {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

