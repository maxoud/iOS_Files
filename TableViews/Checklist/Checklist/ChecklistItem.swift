//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Masoud Afghah on 5/2/19.
//  Copyright © 2019 Max Pax. All rights reserved.
//

import Foundation


class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() -> Bool {
        checked = !checked
        return !checked
    }//end func toggleChecked
}//end class ChecklistItem

