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
        
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }//end func tableView
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            switch indexPath.row {
            case 0:
                label.text = row0Item.text
            case 1:
                label.text = row1Item.text
            case 2:
                label.text = row2Item.text
            case 3:
                label.text = row3Item.text
            case 4:
                label.text = row4Item.text
            default:
                label.text = "Error: Math is wrong"
            }//end switch
        }//end if
        configureCheckmark(for: cell, at: indexPath)
        return cell
    }//end func tableView
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            configureCheckmark(for: cell, at: indexPath)
            tableView.deselectRow(at: indexPath, animated: true)
        }//end if
    }//end func tableView
    
    func configureCheckmark(for cell: UITableViewCell, at indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            cell.accessoryType = row0Item.checked ? .none : .checkmark
            row0Item.checked = !row0Item.checked
        case 1:
            cell.accessoryType = row1Item.checked ? .none : .checkmark
            row1Item.checked = !row1Item.checked
        case 2:
            cell.accessoryType = row2Item.checked ? .none : .checkmark
            row2Item.checked = !row2Item.checked
        case 3:
            cell.accessoryType = row3Item.checked ? .none : .checkmark
            row3Item.checked = !row3Item.checked
        case 4:
            cell.accessoryType = row4Item.checked ? .none : .checkmark
            row4Item.checked = !row4Item.checked
        default:
            break
        }//end switch

    }//end func configureCheckmark
    
}// end class ChecklistViewController

