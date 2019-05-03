//
//  ViewController.swift
//  Checklist
//
//  Created by Masoud Afghah on 5/2/19.
//  Copyright © 2019 Max Pax. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0Item: ChecklistItem
    var row1Item: ChecklistItem
    var row2Item: ChecklistItem
    var row3Item: ChecklistItem
    var row4Item: ChecklistItem
    var todoList: TodoList
    
    required init?(coder aDecoder: NSCoder) {
        
        row0Item = ChecklistItem()
        row1Item = ChecklistItem()
        row2Item = ChecklistItem()
        row3Item = ChecklistItem()
        row4Item = ChecklistItem()
        
        row0Item.text = "Take a jog"
        row1Item.text = "Watch the sunset"
        row2Item.text = "Plant a tree"
        row3Item.text = "Take a picture"
        row4Item.text = "Sing a song"
        
        todoList = TodoList()
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.todos.count
    }//end func tableView
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        let item = todoList.todos[indexPath.row]
        configureText(for: cell, with: item)
        
        configureCheckmark(for: cell, with: item)
        return cell
    }//end func tableView
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = todoList.todos[indexPath.row]
            configureCheckmark(for: cell, with: item)
            tableView.deselectRow(at: indexPath, animated: true)
        }//end if
    }//end func tableView
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem) {
        if let label = cell.viewWithTag(1000) as? UILabel {
            label.text = item.text
        }//end if
    }//end func configureText
    
    func configureCheckmark(for cell: UITableViewCell, with item: ChecklistItem) {
        cell.accessoryType = item.toggleChecked() ? .none : .checkmark
    }//end func configureCheckmark
}// end class ChecklistViewController

